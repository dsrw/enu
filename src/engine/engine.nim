import compiler / [vm, vmdef, options, lineinfos, ast]
import eval
import os, strformat, std/with, parseutils
import ../core
export Interpreter

export VmArgs, get_float, get_int, get_string, get_bool

type
  VMError* = object of CatchableError
  VMQuit* = object of VMError
    info*: TLineInfo
  VMPause* = object of CatchableError
  Engine* = ref object
    ctx: PCtx
    pc: int
    tos: PStackFrame
    line_changed*: proc(current, previous: TLineInfo)
    current_line*: TLineInfo
    previous_line: TLineInfo
    pause_requested: bool
    is_main_module: bool
    initialized*: bool
    code: string
    module_name*: string
    exit_code*: Option[int]
    errors*: seq[tuple[msg: string, info: TLineInfo]]

const
  STDLIB_PATHS = (w". core pure pure/collections pure/concurrency" &
                  w"std fusion")
  MAIN_SCRIPT = "scripts/main.nim"

var
  interpreter: Interpreter
  current_engine: Engine

proc current(): Engine = current_engine
proc set_current(e: Engine) =
  current_engine = e

proc init_interpreter(script_dir, vmlib: string) =
  trace:
    let std_paths = STDLIB_PATHS.map_it join_path(vmlib, "stdlib", it)
    let source_paths = std_paths & join_path(vmlib, "enu") & @[parent_dir MAIN_SCRIPT] & @[script_dir]
    interpreter = create_interpreter(MAIN_SCRIPT, source_paths)
    log_trace("create_interpreter")
    with interpreter:
      register_error_hook proc(config, info, msg, severity: auto) {.gcsafe.} =
        let e = current_engine
        if severity == Error and config.error_counter >= config.error_max:
          let file_name = if info.file_index.int >= 0:
            config.m.file_infos[info.file_index.int].full_path.string
          else:
            "???"
          let msg = &"{file_name}({int info.line},{int info.col}): {msg}"
          echo "error: ", msg
          e.errors.add (msg, info)
          e.exit_code = some(99)
          raise (ref VMQuit)(info: info, msg: msg)

      register_enter_hook proc(c, pc, tos, instr: auto) =
        let e = current()
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

    log_trace("hooks")

proc pause*(e: Engine) =
  set_current e
  e.pause_requested = true

proc load*(e: Engine, script_dir, module_name, code, vmlib: string) =
  e.code = code
  e.module_name = module_name
  set_current e
  if interpreter.is_nil:
    init_interpreter(script_dir, vmlib)
    e.is_main_module = true
  interpreter.implement_routine "*", e.module_name, "quit", proc(a: VmArgs) {.gcsafe.} =
    e.exit_code = some(a.get_int(0).int)
    e.pause()
  e.initialized = true

proc run*(e: Engine): bool =
  set_current e
  e.exit_code = none(int)
  e.errors = @[]
  try:
    interpreter.load_module(e.module_name, e.code)
    false
  except VMPause:
    e.exit_code.is_none

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
  set_current e
  let foreign_proc = interpreter.select_routine(proc_name, module_name = module_name)
  if foreign_proc == nil:
    raise new_exception(VMError, &"script does not export a proc of the name: '{proc_name}'")
  return interpreter.call_routine(foreign_proc, args)

proc call*(e: Engine, proc_name: string): bool =
  set_current e
  try:
    discard e.call_proc(proc_name)
    false
  except VMPause:
    e.exit_code.is_none

proc expose*(e: Engine, proc_name: string,
             routine: proc(a: VmArgs): bool) {.gcsafe.} =
  interpreter.implement_routine "*", e.module_name, proc_name, proc(a: VmArgs) {.gcsafe.} =
    if routine(a):
      e.pause()

proc call_float*(e: Engine, proc_name: string): float =
  e.call_proc(proc_name).get_float()

proc get_var*(e: Engine, var_name: string, module_name: string): PNode =
  let sym = interpreter.select_unique_symbol(var_name, module_name = module_name)
  interpreter.get_global_value(sym)

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
  set_current e
  result = try:
    discard exec_from_ctx(e.ctx, e.pc, e.tos)
    false
  except VMPause:
    e.exit_code.is_none
