# զuinsight 2.0

When making a plugin for the rhythm game [Quaver](https://github.com/Quaver/Quaver), many globals go unnoticed or unused, with no autocomplete for editor interaction or imgui structuring. The purpose of quinsight, built by myself and [Emik](https://github.com/Emik03), is to provide plugin developers with well-documented intellisense and properly-labeled classes.

## Usage

Either use this repository as a submodule, or simply clone the `intellisense.lua` file into your own project. Your intelligent IDE (in my case, Visual Studio Code) should pick up on the defined globals and types for autocompletion and type-checking purposes.

## Features
- Supports the `HitObject`, `TimingPoint`, `ScrollVelocity`, `ScrollSpeedFactor`, and `ScrollGroup` types as LuaLS classes.
- Supports explicitly working with `VectorN` as its own type.
- Includes all properties and methods of the `map`, `state`, `actions`, and `util` globals.
- Includes all `imgui` functions, documented with LuaLS.
- Includes all Quaver provided enums, including `action_type`, `keys`, and `hitsounds`.

## Special Thanks To:
- [Emik](https://github.com/Emik03), for support with imgui functions and documentation.
- [IceDynamix](https://github.com/IceDynamix), for creating the original version of intellisense that this was based off of, [QuaverPluginIntellisense](https://github.com/IceDynamix/QuaverPluginIntellisense).
