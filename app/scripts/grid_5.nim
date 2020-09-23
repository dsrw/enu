import grid

var
  length = 20
  height = 100

speed = 300
height.times:
  4.times:
    length.times:
      forward()
      next_color()
    right()
  up()
  
