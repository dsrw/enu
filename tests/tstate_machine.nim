import engine/engine
import std / [strformat, sugar]

let
  vmlib = "vmlib"
  e1 = Engine()
var counter = 0

e1.load("scripts", "bot", "tests/scripts/bot.nim".read_file, vmlib)
e1.expose("yield_script", a => true)

assert e1.run()
while e1.resume():
  inc counter
  if counter == 4:
    discard e1.call_proc("set_action_running", e1.module_name, false)
    counter = 0