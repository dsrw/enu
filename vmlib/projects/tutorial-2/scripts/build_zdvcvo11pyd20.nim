



let copy = """

  # Inky: Isolation
  
  `Inky: Isolation` is a simple survivial game created in Enu. You can see how it was made in the video [Inky: Isolation. A 90 minute game built with Enu and Nim](https://youtu.be/9e9sLsmsu_o)
  
  Click to [RESTART](nim://restart())

"""
right 3
up 1
var sign1 = md(copy, width = 4, height = 2, size = 200)
left 3
turn 180
var sign2 = md(copy, width = 4, height = 2, size = 200)
down 1
left 3

proc restart =
  sign1.open = false
  sign2.open = false
  player.position = start_spot
  player.rotation = 180
  player.playing = true