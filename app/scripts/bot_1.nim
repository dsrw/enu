import bot

main:
  while true:
    for i in 1..8:
      if i <= 4:
        play("walk")
      else:
        play("run")
      speed = i.to_float()
      debug speed
      forward(2)
      left(45)
