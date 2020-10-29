# Enu
3D live coding, implemented in Nim.

![Enu Screenshot](media/screenshot_2.png)

Enu lets you build and explore worlds using a familiar block-building interface and a Logo inspired API.
It aspires to make 3D development more accessible, and will eventually be usable to create sandalone games.

Enu isn't ready for public testing, but it's getting close. MacOS, PC and Linux version of Enu 0.1 should be ready on Friday, Nov. 6th 2020.

# Demo
See the [Enu 0.1 demo video](https://youtu.be/upg77dMBGDE):

[![Enu 0.1 Demo](media/screenshot_1.png)](https://youtu.be/upg77dMBGDE)

### Outdated Demos

- [Enu 0.01 Intro and Demo](https://youtu.be/QfAzuX7-y0Y)
- [Introducing Enu - NimConf 2020](https://youtu.be/3l6tsKM1cY8)
# Examples

Draw a square:
```nim
forward 10
right 10
back 10
left 10
```
or:
```nim
4.times:
  forward 10
  turn_right()
```
![Square Example](media/square_example.png)
Create a twisting tower:
```nim
var
  length = 20
  height = 50

height.times:
  left length / 2
  back length / 2
  4.times:
    forward length
    turn_right()
  forward length / 2
  right length / 2
  turn_right 5
  up()
```
![Tower Example](media/tower_example.png)

Draw randomly:
```nim
up 10
forward 10
(50..100).times:
  forward 2..5
  turn_right -180..180
  up 0..2
```
![Random Example](media/random_example.png)

Set the color to blue randomly with a 1 in 50 chance. Otherwise set it to white:
```nim
if 1 in 50:
  color = blue
else:
  color = white
```
or as a one-liner:
```nim
color = if 1 in 50: blue else: white
```
![Random Color Example](media/random_color_example.png)

Move forward 10 times, cycling through colors:
```nim
for i in 0..9:
  next_color()
  forward()
```
or:
```nim
10.times:
  color = cycle(red, black, blue)
  forward()
```
![Color Cycle Example](media/cycle_example.png)

# Install

```console
$ nimble prereqs
$ nimble build
$ nimble import
$ nimble start
```

### Notes

Enu temporarily requires a custom Godot version, which lives in `vendor/godot`. This is
built as part of `nimble prereqs`.

See https://docs.godotengine.org/en/3.2/development/compiling/index.html

Windows and Linux targets aren't well tested currently, and may not work.

# Usage

- `ESC` - toggle mouse capture and to dismiss editor windows
- `W, A, S, D` - move around when mouse is captured
- `Space` - jump. Double jump to toggle flying. Hold to go up while flying
- `Shift` - go down while flying
- `~` - toggle the console
- `Cmd+S` - save and reload the current script
- `F` - toggle fullscreen
- `1 - 7` keys - Change action. 1 to code, 2 - 6 for blocks and 7 for objects
- `Mouse Wheel Up/Down` - switch between blocks
- `CTRL` - hold to temporarily capture the mouse and fly. Mainly so you can
  change your view without having to switch away from what you're doing.

Enu 0.1 will only feature 5 block types/colors, and 1 object model (a robot). This will be greatly
expanded in the future.

# Tasks

### v0.1

- [ ] Project support.
- [ ] Save the world when it changes.
- [ ] Basic documentation
- [ ] Validate build and keybindings for Mac/Linux/Windows
- [ ] Mac/Windows/Linux binaries
