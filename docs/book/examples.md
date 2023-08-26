# Examples

*TODO: Include examples of new 0.2 functionality*

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
    turn right
  forward length / 2
  right length / 2
  turn 5
  up 1
```
![Tower Example](media/tower_example.png)

Draw randomly:
```nim
up 10
forward 10
(50..100).times:
  forward 2..5
  turn -180..180
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
10.times:
  color = cycle(red, black, blue)
  forward 1
```
![Color Cycle Example](media/cycle_example.png)
