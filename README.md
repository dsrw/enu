# Enu

3D live coding, implemented in Nim.
Very alpha. See my talk from NimConf 2020.

[![NimConf 2020 Demo](https://img.youtube.com/vi/3l6tsKM1cY8/maxresdefault.jpg)](https://youtu.be/3l6tsKM1cY8)

# Install & Run

```console
$ nimble prereqs
$ nimble godot
```

This will open Godot with the Enu project loaded. Press Play or F5 to launch.

### Notes

Enu temporarily requires a custom Godot version, which lives in `vendor/godot`. This is
built as part of `nimble prereqs`.

See https://docs.godotengine.org/en/3.2/development/compiling/index.html

Windows and Linux targets aren't well tested currently, and may not work.

# Tasks

### v0.01

- [X] Simplify box object for performance
- [ ] Add keybindings to README
- [X] Rework "deselect" behavior
- [ ] Ability to place objects
- [X] Basic error handling

### v0.02

- [X] Better syntax highlighting (comment support at least)
- [X] Make object pick raycast longer
- [ ] Mouse picking
- [ ] Minecraft style flying
- [ ] More block types
- [ ] Validate build and keybindings for Mac/Linux/Windows
- [ ] Support non-hidpi screens
- [ ] Use Inconsolata on Windows/Linux

### v0.1

- [ ] `enu init` command (or similar) for creating a new project
- [ ] Demo game
- [ ] Script improvements required to support demo
- [ ] Basic 1 page in-game help document
- [ ] Mac/Windows/Linux binaries

### v0.2

- [ ] Upstream Nim/Godot changes
- [ ] 2nd demo game
- [ ] Basic UI
- [ ] Controller support
- [ ] iPad release

# Changelog

- HiDPI support. Fonts should look like a proper native app.
- Switched font to SF Mono. Non-Apple platforms will use Inconsolata or similar in the future.
- Fixed input handling. Console now scrolls properly, and events should only be consumed in one place.
- Render resolution can be scaled for performance. Set stretch_shrink on the ViewContainer.
- Objects should highlight more or less properly.
- Better error handling.
- Highlight errors in editor.
- Build tweaks.
