import compiler / [vm, vmdef, nimeval, options, lineinfos, ast]
import os, strformat
import globals

export VmArgs, get_float, get_int, get_string, get_bool

type
  VMQuit = object of CatchableError
  Engine* = ref object
    script_state: PauseState
    intr: Interpreter

const
  STDLIB = find_nim_std_lib_compile_time()

let
  PAUSE* = PauseRequest()

proc load*(script_file: string): Engine =
  let source_paths = [STDLIB, STDLIB & "/core", parent_dir current_source_path]
  result = Engine()
  result.intr = create_interpreter(script_file, source_paths)
  result.intr.graph.config.quit_handler = proc(msg: TMsgKind) =
    raise new_exception(VMQuit, $msg)

  try:
    result.intr.eval_script()

  except VMQuit as e:
    debug e.get_stack_trace()
    debug e.msg
    return nil

proc call_proc*(e: Engine, proc_name: string): Pauseable[PNode] =
  let foreign_proc = select_routine(e.intr, proc_name)
  if foreign_proc == nil:
    quit &"script does not export a proc of the name: '{proc_name}'"
  return e.intr.call_routine(foreign_proc, [])

proc call*(e: Engine, proc_name: string): bool =
  let call_result = call_proc(e, proc_name)
  result = call_result.kind == pkPause
  if result:
    e.script_state = call_result.state

proc pause*(engine: Engine) =
  raise PAUSE

proc expose*(e: Engine, script_name, proc_name: string,
             routine: proc(a: VmArgs): bool) =
  e.intr.implement_routine "*", script_name, proc_name, proc(a: VmArgs) {.gcsafe.} =
    if routine(a):
      e.pause()

proc call_float*(e: Engine, proc_name: string): float =
  let res = call_proc(e, proc_name)
  if res.kind == pkDefault:
    get_float(res.default)
  else:
    -1.0

proc call_int*(e: Engine, proc_name: string): int =
  let res = call_proc(e, proc_name)
  if res.kind == pkDefault:
    get_int(res.default).to_int
  else:
    -1

proc resume*(e: Engine): bool =
  e.script_state = resume(e.script_state)
  e.script_state != nil
