include compiler/nimeval
export Interpreter, VmArgs, PCtx, PStackFrame, TLineInfo

# from nimeval. Added moduleName
proc selectUniqueSymbol*(i: Interpreter; name: string;
                         symKinds: set[TSymKind] = {skLet, skVar};
                         moduleName: string): PSym =
  ## Can be used to access a unique symbol of ``name`` and
  ## the given ``symKinds`` filter.
  assert i != nil
  var module = i.mainModule
  for iface in i.graph.ifaces:
    if iface.module != nil and iface.module.name.s == moduleName:
      module = iface.module
      break
  assert module != nil, "no module selected"
  let n = getIdent(i.graph.cache, name)
  var it: ModuleIter
  var s = initModuleIter(it, i.graph, module, n)
  result = nil
  while s != nil:
    if s.kind in symKinds:
      if result == nil: result = s
      else: return nil # ambiguous
    s = nextModuleIter(it, i.graph)

# from nimeval. Added moduleName
proc selectRoutine*(i: Interpreter; name: string, moduleName: string): PSym =
  ## Selects a declared routine (proc/func/etc) from the main module.
  ## The routine needs to have the export marker ``*``. The only matching
  ## routine is returned and ``nil`` if it is overloaded.
  result = selectUniqueSymbol(i, name, {skTemplate, skMacro, skFunc,
                                        skMethod, skProc, skConverter},
                              moduleName)

proc reset_module*(i: Interpreter, module_name: string) =
  for iface in i.graph.ifaces:
    if iface.module != nil and iface.module.name.s == module_name:
      init_str_tables(i.graph, iface.module)
      iface.module.ast = nil
      break

proc load_module*(i: Interpreter, file_name, code: string) =
  assert i != nil

  var module: PSym
  let module_name = file_name.split_file.name
  for iface in i.graph.ifaces:
    if iface.module != nil and iface.module.name.s == module_name:
      module = iface.module
      break

  if module.is_nil:
    module = i.graph.make_module(file_name)

  init_str_tables(i.graph, module)
  module.ast = nil
  let s = ll_stream_open(code)

  # after some kinds of errors the vm will switch back to em_static_stmt mode,
  # which causes "cannot evaluate at compile time" issues with some variables.
  # Force things back to em_repl.
  PCtx(i.graph.vm).mode = em_repl
  process_module(i.graph, module, i.idgen, s)

proc config*(i: Interpreter): ConfigRef = i.graph.config

proc registerExitHook*(i: Interpreter, hook: proc (c: PCtx, pc: int, tos: PStackFrame)) =
  (PCtx i.graph.vm).exitHook = hook

proc registerEnterHook*(i: Interpreter, hook: proc (c: PCtx, pc: int, tos: PStackFrame, instr: TInstr)) =
  (PCtx i.graph.vm).enterHook = hook

proc registerLeaveHook*(i: Interpreter, hook: proc (c: PCtx, pc: int, tos: PStackFrame, instr: TInstr)) =
  (PCtx i.graph.vm).leaveHook = hook
