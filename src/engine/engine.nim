import compiler / [vm, vmdef, options, lineinfos, ast, idgen]
import types, eval
import std / [os, strformat, with, parseutils, hashes]
import core
import godot
export Interpreter

export VmArgs, get_float, get_int, get_string, get_bool, set_result, to_int

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
    file_name: string
    exit_code*: Option[int]
    errors*: seq[tuple[msg: string, info: TLineInfo]]
    callback*: Callback
    saved_callback*: Callback
    id: int
    running*: bool

const
  STDLIB_PATHS = (w". core pure pure/collections pure/concurrency" &
                  w"std fusion")
  MAIN_SCRIPT = "scripts/main.nim"

var
  interpreter: Interpreter
  current: Engine

proc hash*(e: Engine): Hash = e.id.hash
proc active_engine*(): Engine = current
proc set_active*(e: Engine) =
  current = e

proc init*(t: typedesc[Engine]): Engine =
  result = Engine()
  result.id = get_id()

proc init_interpreter(script_dir, vmlib: string) =
  let std_paths = STDLIB_PATHS.map_it join_path(vmlib, "stdlib", it)
  let source_paths = std_paths & join_path(vmlib, "enu") & @[parent_dir MAIN_SCRIPT] & @[script_dir]
  interpreter = create_interpreter(MAIN_SCRIPT, source_paths)
  log_trace("create_interpreter")
  with interpreter:
    register_error_hook proc(config, info, msg, severity: auto) {.gcsafe.} =
      let e = active_engine()
      if severity == Severity.Error and config.error_counter >= config.error_max:
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
      let e = active_engine()
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

proc pause*(e: Engine) =
  e.pause_requested = true

proc load*(e: Engine, script_dir, file_name, code, vmlib: string, module_suffix = "") =
  e.code = code
  if module_suffix == "":
    e.module_name = file_name.split_file.name
    e.file_name = file_name
  else:
    e.module_name = file_name.split_file.name & module_suffix
    e.file_name = e.module_name
  set_active e
  if interpreter.is_nil:
    init_interpreter(script_dir, vmlib)
    e.is_main_module = true
  e.initialized = true

proc run*(e: Engine): bool =
  set_active e
  e.exit_code = none(int)
  e.errors = @[]
  try:
    interpreter.load_module(e.file_name, e.code)
    false
  except VMPause:
    e.exit_code.is_none

proc get_vec3*(a: VmArgs, pos: int): Vector3 =
  proc float_val(node: PNode, name: string): float =
    assert node.kind == nkExprColonExpr
    assert node.sons[0].sym.kind == skField
    assert node.sons[0].sym.name.s == name
    result = node.sons[1].float_val
  let
    fields = a.get_node(0).sons
    x = float_val(fields[1], "x")
    y = float_val(fields[2], "y")
    z = float_val(fields[3], "z")
  result = vec3(x, y, z)

# adapted from https://github.com/h0lley/embeddedNimScript/blob/6101fb37d4bd3f947db86bac96f53b35d507736a/embeddedNims/enims.nim#L31
proc to_node*(val: int): PNode = new_int_node(nkIntLit, val)
proc to_node*(val: float): PNode = new_float_node(nkFloatLit, val)
proc to_node*(val: string): PNode = new_str_node(nkStrLit, val)
proc to_node*(val: bool): PNode = val.ord.to_node
proc to_node*(val: enum): PNode = val.ord.to_node

proc to_node*(list: open_array[int|float|string|bool|enum]): PNode =
  result = nkBracket.new_node
  result.sons.initialize(list.len)
  for i in 0..list.high: result.sons[i] = list[i].to_node()

proc to_node*(tree: tuple|object): PNode =
  result = nkPar.new_tree
  for field in tree.fields:
    result.sons.add(field.to_node)

proc to_node*(tree: ref tuple|ref object): PNode =
  result = nkPar.new_tree
  if tree.is_nil: return result
  for field in tree.fields:
    result.sons.add(field.to_node)

proc call_proc*(e: Engine, proc_name: string, module_name = "", args: varargs[PNode, to_node]): PNode {.discardable.}=
  let foreign_proc = interpreter.select_routine(proc_name, module_name = module_name)
  if foreign_proc == nil:
    raise new_exception(VMError, &"script does not export a proc of the name: '{proc_name}'")
  return interpreter.call_routine(foreign_proc, args)

proc call*(e: Engine, proc_name: string): bool =
  set_active e
  try:
    discard e.call_proc(proc_name)
    false
  except VMPause:
    e.exit_code.is_none

proc expose*(e: Engine, proc_name: string,
             routine: proc(a: VmArgs): bool) {.gcsafe.} =
  interpreter.implement_routine "*", e.module_name, proc_name, proc(a: VmArgs) {.gcsafe.} =
    if routine(a):
      active_engine().pause()

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

proc get_string*(e: Engine, var_name: string, module_name = ""): string =
  result = e.get_var(var_name, module_name).get_str

proc call_int*(e: Engine, proc_name: string): int =
  e.call_proc(proc_name).get_int.to_int

proc resume*(e: Engine): bool =
  set_active e
  result = try:
    discard exec_from_ctx(e.ctx, e.pc, e.tos)
    false
  except VMPause:
    e.exit_code.is_none
