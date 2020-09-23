import grid

var
  length = 15
  width = 5
  loops = 10
  wall_height = 2
  level_height = 2
  default_block = 1
  wall_block = 2

speed = 200
block:
#while true:
  for i in 0..<loops:
    for y in 0..<4:
      for x in 0..<length:
        index = default_block
        if x > 0: forward()
        save()
        if length - width == x:
          save("next_level")
        elif length - width > x:
          index = wall_block
          up(wall_height)
        else:
          up(level_height)
        restore()
        right()
        forward(width)
        index = wall_block
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
  index = 3
  for t in 0..5:
    forward()
    left()
    forward()
    left()
    forward()
    up()

  #sleep(1)
  #reset(true)
  #sleep(2)
