import * as fs from 'fs';

const file = fs
    .readFileSync('./intellisense.lua', 'utf-8')
    .split('-- END QUAVER')[0]
    .split('-- STARTING LINE')[1]
    .replaceAll('\r', '')
    .trim()
    .split('\n');

const globals = [];
const groups = file.join('\n').split('\n\n');
const classGroups = [];
const functionGroups = [];

file.forEach((line) => {
    if (/^[a-z]+ *= \{\}$/.test(line)) globals.push(line.split(' ')[0]);
});

groups.forEach((group) => {
    if (group.startsWith('---@class')) classGroups.push(group.split('\n'));
    if (group.endsWith('end')) functionGroups.push(group.split('\n'));
});

const dict = globals.reduce((obj, global) => {
    obj[global] = {};
    return obj;
}, {});

let outputStr = '';

classGroups.forEach((cls: string[]) => {
    const className = cls[0].split(' (exact) ')[1];
    const fields = [];
    cls.forEach((line: string, idx: number) => {
        if (!idx) return;
        if (/---@field/.test(line)) {
            const fieldName = line.split(' ')[1];
            const fieldType = line.includes('fun(')
                ? line.match(/fun\([a-zA-Z0-9,\.: ]*\): [a-zA-Z]+/)[0]
                : line.split(' ')[2];

            let fieldDesc = '';
            let searchIndex = idx - 1;

            while (cls[searchIndex].includes('--- ##')) {
                fieldDesc = `${cls[searchIndex].replaceAll(
                    '--- ',
                    ''
                )}\n${fieldDesc}`.trimEnd();
                searchIndex--;
            }

            fields.push({ fieldName, fieldType, fieldDesc });
        }
    });

    const classStr = `# class ${className}\n\n${fields
        .map(
            (field) =>
                `### \`[${className}].${field.fieldName}: ${field.fieldType}\`${
                    field.fieldDesc ? `\n${field.fieldDesc}` : ''
                }`
        )
        .join('\n')}\n\n`;
    outputStr = `${outputStr}${classStr}`;
});

functionGroups.forEach((fn: string[]) => {
    const lastLine = fn[fn.length - 1];
    if (!/\.[a-zA-Z0-9]+\(/.test(lastLine.split(' ')[1])) {
        return;
    }
    const functionName = lastLine.split(' ')[1].split('(')[0];
    const global = functionName.split('.')[0];
    const method = functionName.split('.')[1];
    let functionDesc = '';
    fn.forEach((line) => {
        if (!line.startsWith('--- #')) return;
        functionDesc = `${functionDesc}${line.replaceAll(
            /(--- |#)/g,
            ''
        )}`.trimStart();
    });
    const displayName = lastLine.split(' end')[0];

    dict[global][
        method
    ] = `## \`${displayName}\`\n${functionDesc}\n### Parameters:\n${fn
        .filter((line) => line.includes('@param'))
        .map(
            (param) =>
                `#####    - \`${param.split(' ')[1]}: ${
                    param.split(' ')[2]
                }\` - ${param.split(' ').slice(3).join(' ')}`
        )
        .join('\n')}`;
});

outputStr = `${outputStr}\n\n`;

Object.entries(dict).forEach(([global, obj]) => {
    outputStr = `${outputStr}# ${global}\n${Object.values(obj).join('\n\n')}`;
});

outputStr = `${outputStr}\n\n${JSON.stringify(dict)}`;

fs.writeFileSync('DOCS.md', outputStr);
