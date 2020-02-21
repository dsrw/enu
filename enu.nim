import compiler / [vm, vmdef, nimeval, options, lineinfos]
import os

var
  counter = 0
  processor: proc(delta: float): bool
  script_state: PauseState

type
  VMQuit = object of CatchableError

let std = find_nim_std_lib_compile_time()

proc advance_script(delta: float): bool =
  inc counter
  if processor == nil: return false
  if not processor(delta):
    if script_state != nil:
      script_state = resume(script_state)
    
    if script_state == nil:
      echo "Done script"
      return false
  return true

proc forward(a: VmArgs) {.gcsafe.} =
  let steps = get_float(a, 0)
  processor = proc(delta: float): bool =
    echo "moving forward"
    counter mod 10 != 0
  raise PauseRequest()

proc back(a: VmArgs) {.gcsafe.} =
  let steps = get_float(a, 0)
  processor = proc(delta: float): bool =
    echo "moving back"
    counter mod 10 != 0
  raise PauseRequest()
  
proc run_script() =
  let intr = create_interpreter("myscript.nim",[std, parent_dir(current_source_path)])

  intr.implement_routine("*", "exposed", "forward", forward)
  intr.implement_routine("*", "exposed", "back", back)

  intr.graph.config.quit_handler = proc(msg: TMsgKind) =
    raise new_exception(VMQuit, $msg)
  
  try:
    intr.eval_script()
    let foreign_proc = select_routine(intr, "build_rules")
    if foreign_proc == nil:
      quit "script does not export a proc of the name: 'build_rules'"
    let res = intr.call_routine(foreign_proc, [])
    if res.kind == pkPause:
      script_state = res.state
    else:
      destroy_interpreter(intr)

  except VMQuit:
    echo get_current_exception_msg()

proc run() =
  run_script()
  while advance_script(float(counter)):
    sleep(250)
  echo "done run"

when isMainModule:
  while true:
    run()
  