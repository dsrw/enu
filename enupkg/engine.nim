import compiler / [vm, vmdef, nimeval, options, lineinfos, ast]
import os, strformat
export Interpreter

export VmArgs, get_float, get_int, get_string, get_bool

type
  VMQuit* = object of CatchableError
    info*: TLineInfo
  VMPause* = object of CatchableError
  Engine* = ref object
    i: Interpreter
    ctx: PCtx
    pc: int
    tos: PStackFrame

const
  STDLIB = find_nim_std_lib_compile_time()

proc load*(script_file: string): Engine =
  let source_paths = [STDLIB, STDLIB & "/core", parent_dir current_source_path]
  let e = Engine()
  e.i = create_interpreter(script_file, source_paths)

  e.i.register_error_hook proc(config: ConfigRef, info: TLineInfo, msg: string, severity: Severity) {.gcsafe.} =
    if severity == Error and config.error_counter >= config.error_max:
      raise (ref VMQuit)(info: info, msg: msg)

  e.i.register_exit_hook proc(c: PCtx, pc: int, tos: PStackFrame) =
    e.ctx = c
    e.pc = pc
    e.tos = tos

  e.i.eval_script()
  result = e

proc call_proc*(e: Engine, proc_name: string): PNode =
  let foreign_proc = e.i.select_routine(proc_name)
  if foreign_proc == nil:
    quit &"script does not export a proc of the name: '{proc_name}'"
  return e.i.call_routine(foreign_proc, [])

proc call*(e: Engine, proc_name: string): bool =
  try:
    discard e.call_proc(proc_name)
    false
  except VMPause:
    true

proc pause*(e: Engine) =
  raise new_exception(VMPause, "vm paused")

proc expose*(e: Engine, script_name, proc_name: string,
             routine: proc(a: VmArgs): bool) =
  e.i.implement_routine "*", script_name, proc_name, proc(a: VmArgs) {.gcsafe.} =
    if routine(a):
      e.pause()

proc call_float*(e: Engine, proc_name: string): float =
  e.call_proc(proc_name).get_float()

proc call_int*(e: Engine, proc_name: string): int =
  e.call_proc(proc_name).get_int.to_int

proc resume*(e: Engine): bool =
  try:
    discard execFromCtx(e.ctx, e.pc + 1, e.tos)
    false
  except VMPause:
    true
