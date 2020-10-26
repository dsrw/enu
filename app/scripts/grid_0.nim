import grid
var
  squares = 12
  levels = 4
  length = 300
speed = 0
color = black
levels.x:
  squares.x:
    4.x:
      fd length
      tr()
    tr 360 / squares
  up 50

while true:
  black.energy = 0.1
  sleep 1..4
  (4..10).times:
    black.energy = cycle(0.1, 1, 3, 50, 4)
    sleep 0.0..0.2