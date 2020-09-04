import bot

var walking = true
while true:
  if walking:
    walk()
  else:
    run()
  walking = not walking

  forward(7)
  left()
