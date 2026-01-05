import * as fs from 'fs';
import * as path from 'path';

const srcPath = (file: string) => path.join('./src', file);

const quaverFile = fs
    .readFileSync(srcPath('quaver.lua'), 'utf-8')
    .split('\n')
    .slice(3)
    .join('\n');

const imguiFile = fs
    .readFileSync(srcPath('imgui.lua'), 'utf-8')
    .split('\n')
    .slice(3)
    .join('\n');

const output = `
---@diagnostic disable: missing-fields, duplicate-doc-field, duplicate-doc-alias, unused-local
---@meta quinsight-intellisense

${fs.readFileSync(
    srcPath('preface.lua'),
    'utf-8'
)}\n${quaverFile}\n${imguiFile}`.trim();

fs.writeFileSync('./intellisense.lua', output);

const file = fs
    .readFileSync(srcPath('quaver.lua'), 'utf-8')
    .replaceAll('\r', '')
    .trim()
    .split('\n');

const globals = [];
const groups = file.join('\n').split('\n\n');
const classGroups = [];
const functionGroups = [];
const enumGroups = [];
const attributeGroups = [];

file.forEach((line) => {
    if (/^[a-z0-9]+ *= \{\}$/.test(line)) globals.push(line.split(' ')[0]);
    // Test for instantiated empty tables with no global, as these must be globals.
});

groups.forEach((group) => {
    if (group.startsWith('---@class')) {
        classGroups.push(group.split('\n'));
        return;
    }
    if (group.endsWith('end')) {
        functionGroups.push(group.split('\n'));
        return;
    }
    if (group.startsWith('---@enum')) {
        enumGroups.push(group.split('\n'));
        return;
    }
    if (group.includes('.') && !group.endsWith('.')) {
        attributeGroups.push(group.split('\n'));
        return;
    }
});

const tocDict = {};
const dict = globals.reduce((obj, global) => {
    obj[global] = [];
    tocDict[global] = { attributes: [], functions: [] };
    return obj;
}, {});

let outputStr = '';

const classNames = [];

classGroups.forEach((cls: string[]) => {
    const className = cls[0].split(' (exact) ')[1];
    classNames.push(className);
    const fields = [];
    cls.forEach((line: string, idx: number) => {
        if (!idx) return;
        if (/---@field/.test(line)) {
            const fieldName = line.split(' ')[1];
            const fieldType =
                line.includes('{') && line.includes('}')
                    ? line.match(/\{ *\[[a-zA-Z0-9_]+\]: *[a-zA-Z0-9_]+ *\}/)[0]
                    : line.includes('fun(')
                    ? line.match(/fun\([a-zA-Z0-9,\.: ]*\): [a-zA-Z]+/)[0]
                    : line.split(' ')[2];

            let fieldDesc = '';
            let searchIndex = idx - 1;

            while (cls[searchIndex].includes('---##')) {
                fieldDesc = `${cls[searchIndex].replaceAll(
                    /(---|#)/g,
                    ''
                )}${fieldDesc}`.trimEnd();
                searchIndex--;
            }

            fields.push({
                fieldName,
                fieldType,
                fieldDesc,
            });
        }
    });

    const classStr = `## class \`${className}\`\n\n${fields
        .map(
            (field) =>
                `#### \`[${className}].${field.fieldName}: ${
                    field.fieldType
                }\`${field.fieldDesc ? `\n${field.fieldDesc}` : ''}`
        )
        .join('\n')}\n\n`;
    outputStr = `${outputStr}${classStr}`;
});

attributeGroups.forEach((attr: string[]) => {
    const lastLine = attr[attr.length - 1];
    const attributeGlobal = lastLine.split('.')[0];
    const attributeName = lastLine.split(' = ')[0].trim().split('.')[1];
    const attributeType = lastLine.split('---@type ')[1];
    let attributeDesc = '';
    attr.slice(0, -1).forEach((ln) => {
        attributeDesc = `${attributeDesc}\n${ln.replaceAll(
            /(---|#)/g,
            ''
        )}`.trimStart();
    });
    const label = `attribute-${attributeGlobal}-${attributeName}`;
    tocDict[attributeGlobal].attributes.push(label);
    dict[attributeGlobal].push(
        `<a id="${label.toLowerCase()}"></a>\n## \`attribute ${attributeGlobal}.${attributeName}\`\n\n### Type: \`${attributeType}\`\n${attributeDesc}`
    );
});

const functionNames = [];

functionGroups.forEach((fn: string[]) => {
    const lastLine = fn[fn.length - 1];
    if (!/\.[a-zA-Z0-9]+\(/.test(lastLine.split(' ')[1])) {
        return;
    }
    const functionName = lastLine.split(' ')[1].split('(')[0];
    functionNames.push(functionName);
    const global = functionName.split('.')[0];
    let functionDesc = '';
    let generic = '';
    fn.forEach((line) => {
        if (line.includes('---@generic T : '))
            generic = line.split('---@generic T : ')[1];
        if (!line.startsWith('---#')) return;
        functionDesc = `${functionDesc}${line.replaceAll(
            /(---|#)/g,
            ''
        )}`.trimStart();
    });
    const displayName = lastLine.split(/ end$/)[0];

    const label = `function-${functionName.replaceAll('.', '-')}`;

    let functionStr = `<a id="${label.toLowerCase()}"></a>\n## \`${displayName}\`\n${functionDesc}\n### Parameters:\n${
        fn
            .filter((line) => line.includes('@param'))
            .map(
                (param) =>
                    `- \`${param.split(' ')[1]}: ${
                        param.split(' ')[2]
                    }\` - ${param.split(' ').slice(3).join(' ')}`
            )
            .join('\n') || '- None'
    }\n### Returns:\n${
        fn
            .filter((line) => line.includes('@return'))
            .map(
                (param) =>
                    `- \`${param.split(' ')[1]}\` - ${param
                        .split(' ')
                        .slice(3)
                        .join(' ')}`
            )
            .join('\n') || '- `nil`'
    }\n`;
    if (generic)
        functionStr = functionStr
            .replaceAll(': T', `: ${generic}`)
            .replaceAll('`T`', `\`${generic}\``);
    tocDict[global].functions.push(label);
    dict[global].push(functionStr);
});

outputStr = `${outputStr}\n\n`;

Object.entries(dict).forEach(([global, arr]: [string, string[]]) => {
    outputStr = `${outputStr}<a id="global-${global}"></a>\n# global \`${global}\`\n${arr.join(
        '\n\n'
    )}`;
});

outputStr = outputStr.replaceAll(
    /\(lua:\/\/([a-zA-Z0-9]+)\)/g,
    (_, g) => `(#class-${g.toLowerCase()})`
);
outputStr = outputStr.replaceAll(/\(lua:\/\/([a-zA-Z0-9\.]+)\)/g, (_, g) =>
    functionNames.includes(g)
        ? `(#function-${g.toLowerCase().replaceAll('.', '-')})`
        : `(#attribute-${g.toLowerCase().replaceAll('.', '-')})`
);

let tableOfContents = `# Table of Contents:\n### 1. Classes:\n${classNames
    .map((cls) => `  - [${cls}](#class-${cls.toLowerCase()})`)
    .join('\n')}\n${Object.entries(tocDict)
    .map(
        ([global, obj]: any, idx) =>
            `### ${idx + 2}. [${global.charAt(0).toUpperCase()}${global.slice(
                1
            )} Global](#global-${global})\n  - Attributes:\n${
                obj.attributes
                    .map(
                        (attr) =>
                            `    - [${attr
                                .split('-')
                                .slice(1)
                                .join('.')}](#${attr.toLowerCase()})`
                    )
                    .join('\n') || '    - None'
            }\n  - Functions:\n${obj.functions
                .map(
                    (fn) =>
                        `    - [${fn
                            .split('-')
                            .slice(1)
                            .join('.')}](#${fn.toLowerCase()})`
                )
                .join('\n')}`
    )
    .join('\n')}`;

fs.writeFileSync('DOCS.md', `${tableOfContents}\n${outputStr}`);
