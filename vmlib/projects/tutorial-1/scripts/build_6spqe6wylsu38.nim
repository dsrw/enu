name Maze(finished = false, won = false)
lock = true

proc make_sign: Sign =
  md("` `", title="", width=10.0, height=3.0, size=2600, zoomable = false)

drawing = true
if not is_instance:
  show = false
  quit()

speed = 0.5

forward 20
turn right
forward 10
turn left
forward 30
turn left
forward 15
color = green
turn left
forward 3
turn right
forward 10
turn right
forward 13
turn right
forward 10
turn right
forward 2
save()

color = red
up 5
color = black
up 1

turn right
var end_sign1 = make_sign()
turn left

forward 9
turn left

var end_sign2 = make_sign()

down 1
left 9
down 1
right 9

color = red
down 3
restore()

color = white
forward 1
turn left
forward 22
turn right
forward 44
turn right
forward 10
turn left
forward 16
turn right
forward 7
turn right
forward 2
color = red
left 1
up 5
color = black
up 1

turn 180

var start_sign1 = make_sign()

left 9
turn 180

var start_sign2 = make_sign()
turn 180

down 1
right 9
down 1
left 9
color = red
down 4

finished = true

proc scroller(sign: Sign, msg: string, pause = 0, len = msg.len): proc() =
  var current = msg
  var counter = 0
  
  result = proc() =
    if current == msg and counter < pause:
      inc counter
    else:
      counter = 0 
      current = current[1..^1] & current[0]
      sign.title = "`" & current[0..(len - 1)].strip(leading = false) & "`"

var start_scroller1 = start_sign1.scroller(" START HERE! ", 0, 7)

var start_scroller2 = start_sign2.scroller(" START HERE! ", 0, 7)

var end_scroller1 = end_sign1.scroller(" FINISH HERE! ", 0, 7)

var end_scroller2 = end_sign2.scroller(" FINISH HERE! ", 0, 7)

forever:
  start_scroller1()
  start_scroller2()
  end_scroller1()
  end_scroller2()
  sleep 0.2
  
  if won:
    break
    
drawing = false
speed = 0
turn 180
forward 54
left 28
up 2
Win.new

start_scroller1 = start_sign1.scroller(" GREAT JOB! ", 0, 7)
start_scroller2 = start_sign2.scroller(" GREAT JOB! ", 0, 7)

end_scroller1 = end_sign1.scroller(" GREAT JOB! ", 0, 7)
end_scroller2 = end_sign2.scroller(" GREAT JOB! ", 0, 7)

forever:
  start_scroller1()
  start_scroller2()
  end_scroller1()
  end_scroller2()
  sleep 0.2
    