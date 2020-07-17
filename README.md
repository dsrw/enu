# Enu
3D live coding, implemented in Nim

Very alpha. See my talk from NimConf 2020

[![NimConf 2020 Demo](https://img.youtube.com/vi/3l6tsKM1cY8/maxresdefault.jpg)](https://youtu.be/3l6tsKM1cY8)


# Install

#### Requisites

- Godot game engine.
- Godot Nim library.
- Nim Stable (not devel).

```console
$ nimble generate
$ nimble godot
```

- If Godot wont have **Enu** on the Projects list, click on Scan button,
  and select the folder of Enu, so it adds Enu to the list of Projects.
- Double click **Enu** project, so it opens and prepares all assets,
  you should see a popup with progress bar that says "importing assets"
  (you dont need to Edit anything, is just to auto-import internal assets).
- Press Play or F5, a new window with Enu should open.

# TODO
### v0.01

- [X] Simplify box object for performance
- [ ] Rework "deselect" behavior
- [ ] Ability to place objects
- [ ] Basic error handling

### v0.1

- [ ] Better syntax highlighting (comment support at least)
- [ ] Make object pick raycast longer
- [ ] Mouse picking
- [ ] Minecraft style flying
- [ ] More block types
- [ ] Windows binary release
- [ ] Mac binary release
- [ ] Test on Linux

### v0.2
- [ ] `enu init` command (or similar) for creating a new project
- [ ] Demo game
- [ ] Script improvements required to support demo

### v0.3
- [ ] 2nd demo game
- [ ] iPad release



