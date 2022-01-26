import engine/engine, core
import std / [sugar, os]
include "models/default_robot.nim.nimf"

proc run_script(name: string) =
  let
    script_dir = nim_filename().parent_dir & "/scripts/instancing"
    script_path = script_dir & "/" & name
    code = default_robot(script_path, "", false)
    e = Engine()

  e.load(script_dir, script_path, code, "vmlib")
  e.expose("yield_script", a => true)
  e.expose("echo_console", a => echo(get_string(a, 0)))

  assert e.run()
  while e.resume:
    discard e.call_proc("set_action_running", e.module_name, false)

run_script("box_script_1.nim")
run_script("box_script_2.nim")
