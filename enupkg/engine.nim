import compiler / [vm, vmdef, nimeval, options, lineinfos, ast]
import os, strformat
export Interpreter

export VmArgs, get_float, get_int, get_string, get_bool

type
  VMQuit* = object of CatchableError
    info*: TLineInfo
  VMPause* = object of CatchableError

const
  STDLIB = find_nim_std_lib_compile_time()

proc load*(script_file: string): Interpreter =
  let source_paths = [STDLIB, STDLIB & "/core", parent_dir current_source_path]
  result = create_interpreter(script_file, source_paths)

  result.registerErrorHook proc(config: ConfigRef, info: TLineInfo, msg: string, severity: Severity) {.gcsafe.} =
    if severity == Error and config.errorCounter >= config.errorMax:
      raise (ref VMQuit)(info: info, msg: msg)

  result.eval_script()

proc call_proc*(i: Interpreter, proc_name: string): PNode =
  let foreign_proc = select_routine(i, proc_name)
  if foreign_proc == nil:
    quit &"script does not export a proc of the name: '{proc_name}'"
  return i.call_routine(foreign_proc, [])

proc call*(i: Interpreter, proc_name: string): bool =
  try:
    discard i.call_proc(proc_name)
    false
  except VMPause:
    true

proc pause*(i: Interpreter) =
  raise new_exception(VMPause, "vm paused")

proc expose*(i: Interpreter, script_name, proc_name: string,
             routine: proc(a: VmArgs): bool) =
  i.implement_routine "*", script_name, proc_name, proc(a: VmArgs) {.gcsafe.} =
    if routine(a):
      i.pause()

proc call_float*(i: Interpreter, proc_name: string): float =
  i.call_proc(proc_name).get_float()

proc call_int*(i: Interpreter, proc_name: string): int =
  i.call_proc(proc_name).get_int.to_int

proc resume*(i: Interpreter): bool =
  try:
    discard nimeval.resume(i)
    false
  except VMPause:
    true
