import grid

var
  length = 15
  width = 5
  loops = 10
  wall_height = 4
  level_height = 2

speed = 0

for i in 0..<loops:
  for y in 0..<4:
    for x in 0..<length:
      index = 0
      if x > 0: forward()
      save()
      if length - width == x:
        save("next_level")
      elif length - width > x:
        index = 1
        up(wall_height)
      else:
        up(level_height)
      restore()
      right()
      forward(width)
      index = 1
      up(wall_height)
      restore()

    up()
    right()
    forward(width)
    up()
    back(width)
    restore("next_level")
    left()
    up(level_height)
