import grid



main:
  speed = 0.0
  var
    height = 5
    length = 10
  for h in 0..height:
    for sides in 0..3:
      forward(length)
      right()
    up()
  fill_square(length)
  
    
  
    
    
