import grid

#forward(50)

var
  length = 25
  width = 5
  loops = 2
  wall_height = 2
  level_height = 2
  default_color = blue
  wall_color = red

speed = 300
#while true:
block:
  for i in 0..<loops:
    for y in 0..<4:
      for x in 0..<length:
        color = default_color
        if x > 0: forward()
        save()
        if length - width == x:
          save("next_level")
        elif length - width > x:
          color = wall_color
          up(wall_height)
        else:
          up(level_height)
        restore()
        right()
        forward(width)
        color = wall_color
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

  drawing = false
  up(5)
  drawing = true
  color = green
  for t in 0..5:
    forward()
    left()
    forward()
    left()
    forward()
    up()
