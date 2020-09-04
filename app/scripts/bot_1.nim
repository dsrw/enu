import bot

proc main* =
  speed = 1.0
  play("walk")
  while true:
    forward(5)
    left(120)
