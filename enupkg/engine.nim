import compiler / [vm, vmdef, nimeval, options, lineinfos, ast]
import os, strformat, std/with
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
    line_changed*: proc(current, previous: TLineInfo)
    current_line*: TLineInfo
    previous_line: TLineInfo


const
  STDLIB = find_nim_std_lib_compile_time()

proc load*(e: Engine, script_file: string) =
  let source_paths = [STDLIB, STDLIB & "/core", parent_dir current_source_path]
  e.i = create_interpreter(script_file, source_paths)
  with e.i:
    register_error_hook proc(config, info, msg, severity: auto) {.gcsafe.} =
      if severity == Error and config.error_counter >= config.error_max:
        raise (ref VMQuit)(info: info, msg: msg)

    register_exit_hook proc(c, pc, tos: auto) =
      e.ctx = c
      e.pc = pc
      e.tos = tos

    register_enter_hook proc(c, pc, tos, instr: auto) =
      let info = c.debug[pc]
      if info.file_index.int == 0 and e.previous_line != info:
        if e.line_changed != nil:
          e.line_changed(info, e.previous_line)
        (e.previous_line, e.current_line) = (e.current_line, info)

proc run*(e: Engine): bool =
  try:
    e.i.eval_script()
    false
  except VMPause:
    true

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

proc get_var*(e: Engine, var_name: string, module_name: string): PNode =
  let sym = e.i.select_unique_symbol(var_name, module_name = module_name)
  e.i.get_global_value(sym)

proc get_float*(e: Engine, var_name: string, module_name = ""): float =
  e.get_var(var_name, module_name).get_float

proc get_int*(e: Engine, var_name: string, module_name = ""): int =
  e.get_var(var_name, module_name).get_int.to_int

proc call_int*(e: Engine, proc_name: string): int =
  e.call_proc(proc_name).get_int.to_int

proc resume*(e: Engine): bool =
  try:
    discard execFromCtx(e.ctx, e.pc + 1, e.tos)
    false
  except VMPause:
    true
