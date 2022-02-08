import std / [os, strformat, with, importutils]
import pkg / compiler / ast except new_node
import pkg / godot except print
import pkg / [print], pkg / compiler / [vm, vmdef, options, lineinfos]
import core, eval
import models/types

export Interpreter, VmArgs, set_result

const
  STDLIB_PATHS = [".", "core", "pure", "pure/collections", "pure/concurrency", "std", "fusion"]
  MAIN_SCRIPT = "scripts/main.nim"

private_access ScriptCtx

proc init*(_: type Interpreter, script_dir, vmlib: string): Interpreter =
  let std_paths = STDLIB_PATHS.map_it join_path(vmlib, "stdlib", it)
  let source_paths = std_paths & join_path(vmlib, "enu") & @[parent_dir MAIN_SCRIPT] & @[script_dir]
  print source_paths
  result = create_interpreter(MAIN_SCRIPT, source_paths)

proc pause*(ctx: ScriptCtx) =
  ctx.pause_requested = true

proc load*(self: ScriptCtx, script_dir, file_name, code, vmlib: string) =
  self.ctx = nil
  self.pc = 0
  self.tos = nil
  self.code = code
  self.module_name = file_name.split_file.name
  self.file_name = file_name

proc run*(self: ScriptCtx): bool =
  self.exit_code = none(int)
  self.errors = @[]
  try:
    self.interpreter.load_module(self.file_name, self.code)
    result = false
  except VMPause:
    result = self.exit_code.is_none

proc call_proc*(self: ScriptCtx, proc_name: string, args: varargs[PNode]): tuple[paused: bool, result: PNode] =
  let foreign_proc = self.interpreter.select_routine(proc_name, module_name = self.module_name)
  if foreign_proc == nil:
    raise new_exception(VMError, &"script does not export a proc of the name: '{proc_name}'")
  result = try:
    (false, self.interpreter.call_routine(foreign_proc, args))
  except VMPause:
    (self.exit_code.is_none, nil)

proc get_var*(self: ScriptCtx, var_name: string, module_name: string): PNode =
  let sym = self.interpreter.select_unique_symbol(var_name, module_name = module_name)
  self.interpreter.get_global_value(sym)

proc resume*(self: ScriptCtx): bool =
  assert not self.ctx.is_nil
  assert self.pc > 0
  assert not self.tos.is_nil

  result = try:
    discard exec_from_ctx(self.ctx, self.pc, self.tos)
    false
  except VMPause:
    self.exit_code.is_none
