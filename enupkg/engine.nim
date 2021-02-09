import compiler / [vm, vmdef, nimeval, options, lineinfos, ast]
import os, strformat, std/with
import core
export Interpreter

export VmArgs, get_float, get_int, get_string, get_bool

type
  VMError* = object of CatchableError
  VMQuit* = object of VMError
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
    initialized*: bool
    pause_requested: bool
    errors*: seq[tuple[msg: string, info: TLineInfo]]

const
  STDLIB = find_nim_stdlib_compile_time()
  STDLIB_PATHS = (w". core pure pure/collections pure/concurrency" &
                  w"std fusion")

proc load*(e: Engine, script_file, vmlib: string) =
  trace:
    let std_paths = STDLIB_PATHS.map_it join_path(vmlib, "stdlib", it)
    let source_paths = std_paths & join_path(vmlib, "enu") & @[parent_dir script_file]
    e.i = create_interpreter(script_file, source_paths)
    log_trace("create_interpreter")
    with e.i:
      register_error_hook proc(config, info, msg, severity: auto) {.gcsafe.} =
        if severity == Error and config.error_counter >= config.error_max:
          echo &"error: {msg}"
          e.errors.add (msg, info)

          raise (ref VMQuit)(info: info, msg: msg)

      register_enter_hook proc(c, pc, tos, instr: auto) =
        let info = c.debug[pc]
        if info.file_index.int == 0 and e.previous_line != info:
          if e.line_changed != nil:
            e.line_changed(info, e.previous_line)
          (e.previous_line, e.current_line) = (e.current_line, info)
        if e.pause_requested:
          e.pause_requested = false
          e.ctx = c
          e.pc = pc
          e.tos = tos
          raise new_exception(VMPause, "vm paused")

    e.initialized = true
    log_trace("hooks")

proc run*(e: Engine): bool =
  try:
    e.i.eval_script()
    false
  except VMPause:
    true

proc to_node*(val: int): PNode =
  new_int_node(nk_int_lit, val)

proc to_node*(val: float): PNode =
  new_float_node(nk_float_lit, val)

proc to_node*(val: string): PNode =
  new_str_node(nk_str_lit, val)

proc to_node*(val: bool): PNode =
  let v = if val: 1 else: 0
  new_int_node(nk_int_lit, v)

proc call_proc*(e: Engine, proc_name: string, module_name = "", args: varargs[PNode, to_node]): PNode {.discardable.}=
  let foreign_proc = e.i.select_routine(proc_name, module_name = module_name)
  if foreign_proc == nil:
    raise new_exception(VMError, &"script does not export a proc of the name: '{proc_name}'")
  return e.i.call_routine(foreign_proc, args)

proc call*(e: Engine, proc_name: string): bool =
  try:
    discard e.call_proc(proc_name)
    false
  except VMPause:
    true

proc pause*(e: Engine) =
  e.pause_requested = true

proc expose*(e: Engine, script_name, proc_name: string,
             routine: proc(a: VmArgs): bool) {.gcsafe.} =
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

proc get_bool*(e: Engine, var_name: string, module_name = ""): bool =
  let b = e.get_var(var_name, module_name).get_int
  return b == 1

proc call_int*(e: Engine, proc_name: string): int =
  e.call_proc(proc_name).get_int.to_int

proc resume*(e: Engine): bool =
  try:
    discard execFromCtx(e.ctx, e.pc, e.tos)
    false
  except VMPause:
    true
