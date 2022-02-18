name potato(length = 5, width = 2, color = red, label = "hi", friendly = true)

- wander:
  forward 5
  turn right

- run_away(fast=true, msg="Help!") string:
  echo msg
  msg = "somehting"
  echo msg
  forward 100

speed = 5
me.speed = 10
echo speed
echo me.speed
run_away()
# assert me.length == 5
# assert potato.length == 5
# me.length = 10
# potato.label = "red"
# assert me.label == "red"

proc tester(speed = 50) =
  echo speed

tester(6)

echo speed
block:
  var speed = 5
  echo speed
echo speed
tester(speed = 10)
