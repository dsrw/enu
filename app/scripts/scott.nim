import enu

main:
  while true:
    for i in 1..8:
      if i <= 4:
        play("walk")
      else:
        play("run")
      speed = i.to_float()
      forward(1)
      left(45)