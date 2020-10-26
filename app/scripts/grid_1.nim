import grid
var
  length = 50
  height = 200
speed = 0
height.times:
  drawing = false
  save()
  left length / 2
  back length / 2
  drawing = true
  4.times:
    if 1 in 20:
      color = green
    else:
      color = black
    forward length
    turn_right()
  restore()
  turn_right 1
  up()
  
