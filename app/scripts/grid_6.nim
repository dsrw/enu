import grid

var
  squares_per_side = 4
  square_height = 6
  square_width = 15
  floors = 7

speed = 0
proc fill_floor(length: auto) =
  var length = length
  for l in countdown(length, 0, 2):
    4.times:
      forward(l)
      right()
    forward()
    right()
    forward(1)
    left()
    
floors.times:
  4.times:
    squares_per_side.times:
      forward(square_width)
      up(square_height)
      back(square_width)
      down(square_height)
      forward(square_width + 1)
    left()
  up(square_height)
  save()
  forward()
  left()
  forward()
  fill_floor(square_width * squares_per_side + 2)
  restore()
  next_color()
  
    
