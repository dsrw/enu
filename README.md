# Enu

3D live coding, implemented in Nim.
Very alpha. See my [intro video](https://youtu.be/QfAzuX7-y0Y):

[![Enu Demo](https://img.youtube.com/vi/AW0PT9j976s/hqdefault.jpg)](https://youtu.be/AW0PT9j976s)

Or [my talk from NimConf 2020](https://youtu.be/3l6tsKM1cY8).

[![NimConf 2020 Demo](https://img.youtube.com/vi/3l6tsKM1cY8/maxresdefault.jpg)](https://youtu.be/3l6tsKM1cY8)

# Install

```console
$ nimble prereqs
$ nimble build
$ nimble edit
```
Launch Enu with the play button in the upper right, or by pressing the F5 key.

### Notes

Enu temporarily requires a custom Godot version, which lives in `vendor/godot`. This is
built as part of `nimble prereqs`.

See https://docs.godotengine.org/en/3.2/development/compiling/index.html

Windows and Linux targets aren't well tested currently, and may not work.

# Usage

Move with WASD keys. Double jump to toggle flying. Space and shift to go up
and down while flying. Ctrl/Cmd+P to pause all scripts. Ctrl/Cmd+F to toggle
fullscreen. ESC to grab/release mouse, and close editors.

Ctrl/Cmd+Q to quit. Number keys to switch modes:

1. Code Mode. Select objects to modify their code. Ctrl/Cmd+S to save.
2. Edit Mode. Modify an object manually. Currently this means adding/removing LevelGrid blocks.
   Left click to add blocks, right click to remove. Mousewheel up/down or +/- keys to cycle through
   block types.
3. Object Mode. Place and destroy objects, such as LevelGrids and blocks.

# Tasks

### v0.01

- [X] Simplify box object for performance
- [X] Add keybindings to README
- [X] Rework "deselect" behavior
- [ ] Ability to place objects
- [X] Basic error handling

### v0.02

- [X] Better syntax highlighting (comment support at least)
- [X] Make object pick raycast longer
- [ ] Mouse picking
- [X] Better flying
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

- [ ] Upstream Nim changes
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
- Switched to Nim devel 1.3
- Use [Nim VM execution hooks](https://github.com/nim-lang/RFCs/issues/249).
- The currently executing line is highlighted if the editor is open.
- Added `nimble start` command to launch directly into Enu.
- Scripts no longer require a `main:` section.
- Flying is better, I think.
- Much faster script reloading
- `grid.speed` now represents dropped blocks per second.
- `grid.speed = 0` now works properly, running the entire script in a single frame
- `grid.drawing = false` enables moving the pen without dropping blocks.
- `grid.save()` and `grid.restore()` to save/restore position/direction/index/speed/drawing
  state while drawing blocks. Pass a `name` argument to support multiple save points.
- Fixed build/run on Linux. Input is still broken.
- Added a dock for actions, objects and block types. Statically populated for now.
- Console can be toggled with ` or ~, or cleared with Cmd+K.
- Added a preview generator, for taking images of blocks and objects for placement on the
  dock. Must be manually configured per object for now. This will be automatic in the future.
- Now uses https://github.com/Zylann/godot_voxel for static voxels. Much better performance.
  Scaled or moving objects will use the old gridmap approach for now.
- Voxel painting support. Press ESC to toggle mouse capture. If the mouse is uncaptured, the
  cursor can be used to paint or select.
- Added a "Builder" object that can create objects based on gridmaps, or voxel terrains.
  Builders are automatically created when you start constructing a new object 2+ blocks from
  an existing object. Each builder can be scripted. Builders are NOT currently removed when
  their voxels are destroyed, but they will be in the future. Delete builders (and everything
  else) with `nimble reset`.
