import grid

var
  length = 10
  height = 20
  raising = true
  sleep_time = 0.1
  idx = 0
  blank = 5
  factor = 0

speed = 0
index = 0

while true:
  for step in 0..<height:
    for wall in 0..<4:
      index = 0
      for i in 0..<length:
        if i == blank:
          index = -1
        forward(1)
      right()
    up()
  raising = not raising
  reset()
  inc blank
  if blank > length:
    blank = 0
  sleep(sleep_time)
