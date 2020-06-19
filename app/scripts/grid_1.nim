import grid



main:
  speed = 0.0
  var 
    height = 5
    length = 20
  for z in 0..height:
    for i in 0..4:
      forward(length)
      left()
    up()
  fill_square(length)
  
    
  
    
    
