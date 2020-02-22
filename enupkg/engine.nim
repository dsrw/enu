import compiler / [vm, vmdef, nimeval, options, lineinfos]
import os, strformat

export VmArgs, get_float, get_int, get_string, get_bool

type
  VMQuit = object of CatchableError
  Engine* = ref object
    script_state: PauseState
    intr: Interpreter

const
  STDLIB = find_nim_std_lib_compile_time()
  
let  
  PAUSE = PauseRequest()

proc load*(script_file: string): Engine =
  let source_paths = [STDLIB, parent_dir current_source_path]
  result = Engine()
  result.intr = create_interpreter(script_file, source_paths)
  result.intr.graph.config.quit_handler = proc(msg: TMsgKind) =
    raise new_exception(VMQuit, $msg)
  
  try:
    result.intr.eval_script()

  except VMQuit:
    echo get_current_exception_msg()
    return nil

proc call*(e: Engine, proc_name = "main"): bool {.discardable.} =
  let foreign_proc = select_routine(e.intr, proc_name)
  if foreign_proc == nil:
    quit &"script does not export a proc of the name: '{proc_name}'"
  let call_result = e.intr.call_routine(foreign_proc, [])
  result = call_result.kind == pkPause
  if result:
    e.script_state = call_result.state

proc expose*(e: Engine, script_name, proc_name: string, routine: proc(e: Engine, a: VmArgs)) =
  e.intr.implement_routine "*", script_name, proc_name, proc(a: VmArgs) {.gcsafe.} =
    routine(e, a)

proc pause*(engine: Engine) =
  raise PAUSE

proc resume*(e: Engine): bool =
  e.script_state = resume(e.script_state)
  e.script_state != nil
  