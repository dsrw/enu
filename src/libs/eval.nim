include compiler / nimeval
import compiler / [syntaxes, reorder]
import compiler / passes {.all.}

import compiler / msgs
export Interpreter, VmArgs, PCtx, PStackFrame, TLineInfo

# adapted from
# https://github.com/nim-lang/Nim/blob/version-1-6/compiler/passes.nim#L120
# Normal module loading procedure, but makes TPassContextArray a var param
# so it can be passed to extend_module
when (NimMajor, NimMinor) >= (1, 7):
  proc process_module*(graph: ModuleGraph; module: PSym; idgen: IdGenerator;
                      stream: PLLStream; a: var TPassContextArray): bool {.discardable.} =
    if graph.stopCompile(): return true
    var
      p: Parser
      s: PLLStream
      file_idx = module.file_idx
    prepare_config_notes(graph, module)
    open_passes(graph, a, module, idgen)
    if stream == nil:
      let filename = to_full_path_consider_dirty(graph.config, file_idx)
      s = ll_stream_open(filename, fmRead)
      if s == nil:
        raw_message(graph.config, err_cannot_open_file, filename.string)
        return false
    else:
      s = stream

    when defined(nimsuggest):
      let filename = to_full_path_consider_dirty(graph.config, file_idx).string
      msgs.set_hash(graph.config, file_idx, $sha1.secure_hash_file(filename))

    while true:
      open_parser(p, file_idx, s, graph.cache, graph.config)

      if not belongs_to_stdlib(graph, module) or (belongs_to_stdlib(graph, module) and module.name.s == "distros"):
        # XXX what about caching? no processing then? what if I change the
        # modules to include between compilation runs? we'd need to track that
        # in ROD files. I think we should enable this feature only
        # for the interactive mode.
        if module.name.s != "nimscriptapi":
          process_implicits graph, graph.config.implicit_imports, nk_import_stmt, a, module
          process_implicits graph, graph.config.implicit_includes, nk_include_stmt, a, module

      check_first_line_indentation(p)
      while true:
        if graph.stop_compile(): break
        var n = parse_top_level_stmt(p)
        if n.kind == nk_empty: break
        if (sf_system_module notin module.flags and
            ({sf_no_forward, sf_reorder} * module.flags != {} or
            code_reordering in graph.config.features)):
          # read everything, no streaming possible
          var sl = new_node_i(nk_stmt_list, n.info)
          sl.add n
          while true:
            var n = parse_top_level_stmt(p)
            if n.kind == nk_empty: break
            sl.add n
          if sf_reorder in module.flags or code_reordering in graph.config.features:
            sl = reorder(graph, sl, module)
          discard process_top_level_stmt(graph, sl, a)
          break
        elif n.kind in imperative_code:
          # read everything until the next proc declaration etc.
          var sl = new_node_i(nk_stmt_list, n.info)
          sl.add n
          var rest: PNode = nil
          while true:
            var n = parse_top_level_stmt(p)
            if n.kind == nk_empty or n.kind notin imperative_code:
              rest = n
              break
            sl.add n
          #echo "-----\n", sl
          if not process_top_level_stmt(graph, sl, a): break
          if rest != nil:
            #echo "-----\n", rest
            if not process_top_level_stmt(graph, rest, a): break
        else:
          #echo "----- single\n", n
          if not process_top_level_stmt(graph, n, a): break
      close_parser(p)
      if s.kind != lls_std_in: break
    close_passes(graph, a)
    if graph.config.backend notin {backend_c, backend_cpp, backend_objc}:
      # We only write rod files here if no C-like backend is active.
      # The C-like backends have been patched to support the IC mechanism.
      # They are responsible for closing the rod files. See `cbackend.nim`.
      close_rod_file(graph, module)
    result = true

else:

  proc process_module*(graph: ModuleGraph; module: PSym; idgen: IdGenerator;
                      stream: PLLStream, a: var TPassContextArray): bool {.discardable.} =
    if graph.stop_compile(): return true
    var
      p: Parser
      s: PLLStream
      file_idx = module.file_idx
    prepare_config_notes(graph, module)
    open_passes(graph, a, module, idgen)
    if stream == nil:
      let filename = to_full_path_consider_dirty(graph.config, file_idx)
      s = ll_stream_open(filename, fm_read)
      if s == nil:
        raw_message(graph.config, err_cannot_open_file, filename.string)
        return false
    else:
      s = stream
    while true:
      open_parser(p, file_idx, s, graph.cache, graph.config)

      if not part_of_stdlib(module) or module.name.s == "distros":
        # XXX what about caching? no processing then? what if I change the
        # modules to include between compilation runs? we'd need to track that
        # in ROD files. I think we should enable this feature only
        # for the interactive mode.
        if module.name.s != "nimscriptapi":
          process_implicits graph, graph.config.implicit_imports, nk_import_stmt,
            a, module
          process_implicits graph, graph.config.implicit_includes,
            nk_include_stmt, a, module

      while true:
        if graph.stop_compile(): break
        var n = parse_top_level_stmt(p)
        if n.kind == nk_empty: break
        if (sf_system_module notin module.flags and
            ({sf_no_forward, sf_reorder} * module.flags != {} or
            code_reordering in graph.config.features)):
          # read everything, no streaming possible
          var sl = new_node_i(nk_stmt_list, n.info)
          sl.add n
          while true:
            var n = parse_top_level_stmt(p)
            if n.kind == nk_empty: break
            sl.add n
          if sf_reorder in module.flags or code_reordering in graph.config.features:
            sl = reorder(graph, sl, module)
          discard process_top_level_stmt(graph, sl, a)
          break
        elif n.kind in imperative_code:
          # read everything until the next proc declaration etc.
          var sl = new_node_i(nk_stmt_list, n.info)
          sl.add n
          var rest: PNode = nil
          while true:
            var n = parse_top_level_stmt(p)
            if n.kind == nk_empty or n.kind notin imperative_code:
              rest = n
              break
            sl.add n
          #echo "-----\n", sl
          if not process_top_level_stmt(graph, sl, a): break
          if rest != nil:
            #echo "-----\n", rest
            if not process_top_level_stmt(graph, rest, a): break
        else:
          #echo "----- single\n", n
          if not process_top_level_stmt(graph, n, a): break
      close_parser(p)
      if s.kind != lls_std_in: break
    close_passes(graph, a)
    if graph.config.backend notin {backend_c, backend_cpp, backend_objc}:
      # We only write rod files here if no C-like backend is active.
      # The C-like backends have been patched to support the IC mechanism.
      # They are responsible for closing the rod files. See `cbackend.nim`.
      close_rod_file(graph, module)
    result = true


# from nimeval. Added moduleName
proc select_unique_symbol*(i: Interpreter; name: string;
  sym_kinds: set[TSymKind] = {sk_let, sk_var}; module_name: string): PSym =
  ## Can be used to access a unique symbol of ``name`` and
  ## the given ``symKinds`` filter.
  assert i != nil
  var module = i.main_module
  for iface in i.graph.ifaces:
    if iface.module != nil and iface.module.name.s == module_name:
      module = iface.module
      break
  assert module != nil, "no module selected"
  let n = get_ident(i.graph.cache, name)
  var it: ModuleIter
  var s = init_module_iter(it, i.graph, module, n)
  result = nil
  while s != nil:
    if s.kind in sym_kinds:
      if result == nil: result = s
      else: return nil # ambiguous
    s = next_module_iter(it, i.graph)

# from nimeval. Added moduleName
proc select_routine*(i: Interpreter; name: string, module_name: string): PSym =
  ## Selects a declared routine (proc/func/etc) from the main module.
  ## The routine needs to have the export marker ``*``. The only matching
  ## routine is returned and ``nil`` if it is overloaded.
  {.cast(gcsafe).}:
    result = select_unique_symbol(i, name, {sk_template, sk_macro, sk_func,
      sk_method, sk_proc, sk_converter}, module_name)

proc reset_module*(i: Interpreter, module_name: string) =
  for iface in i.graph.ifaces:
    if iface.module != nil and iface.module.name.s == module_name:
      init_str_tables(i.graph, iface.module)
      iface.module.ast = nil
      break


proc load_module*(i: Interpreter, file_name, code: string,
  a: var TPassContextArray) {.gcsafe.} =

  assert i != nil

  var module: PSym
  let module_name = file_name.split_file.name
  for iface in i.graph.ifaces:
    if iface.module != nil and iface.module.name.s == module_name:
      module = iface.module
      break

  if module.is_nil:
    {.cast(gcsafe).}:
      module = i.graph.make_module(file_name)

  init_str_tables(i.graph, module)
  module.ast = nil
  var stream = ll_stream_open(code)

  # after some kinds of errors the vm will switch back to em_static_stmt mode,
  # which causes "cannot evaluate at compile time" issues with some variables.
  # Force things back to em_repl.
  PCtx(i.graph.vm).mode = em_repl
  {.cast(gcsafe).}:
    discard process_module(i.graph, module, i.idgen, stream, a)

# adapted from
# https://github.com/nim-lang/Nim/blob/version-1-6/compiler/passes.nim#L120
proc extend_module(graph: ModuleGraph; a: var TPassContextArray, module: PSym;
    idgen: IdGenerator; stream: PLLStream): bool {.discardable.} =

  if graph.stop_compile(): return true
  var
    p: Parser
    s = stream
    file_idx = module.file_idx

  while true:
    open_parser(p, file_idx, s, graph.cache, graph.config)

    while true:
      if graph.stop_compile(): break
      var n = parse_top_level_stmt(p)
      if n.kind == nk_empty: break
      if (sf_system_module notin module.flags and
          ({sf_no_forward, sf_reorder} * module.flags != {} or
          code_reordering in graph.config.features)):
        # read everything, no streaming possible
        var sl = new_node_i(nk_stmt_list, n.info)
        sl.add n
        while true:
          var n = parse_top_level_stmt(p)
          if n.kind == nk_empty: break
          sl.add n

        discard process_top_level_stmt(graph, sl, a)
        break
      elif n.kind in imperative_code:
        # read everything until the next proc declaration etc.
        var sl = new_node_i(nk_stmt_list, n.info)
        sl.add n
        var rest: PNode = nil
        while true:
          var n = parse_top_level_stmt(p)
          if n.kind == nk_empty or n.kind notin imperative_code:
            rest = n
            break
          sl.add n
        if not process_top_level_stmt(graph, sl, a): break
        if rest != nil:
          if not process_top_level_stmt(graph, rest, a): break
      else:
        if not process_top_level_stmt(graph, n, a): break
    close_parser(p)
    if s.kind != lls_std_in: break
  result = true

proc eval*(i: Interpreter, a: var TPassContextArray, file_name, code: string) =
  ## This can also be used to *reload* the script.
  assert i != nil
  var module: PSym
  let module_name = file_name.split_file.name
  for iface in i.graph.ifaces:
    if iface.module != nil and iface.module.name.s == module_name:
      module = iface.module
      break

  assert module != nil, "no valid module selected"
  let s = ll_stream_open(code)
  extend_module(i.graph, a, module, i.idgen, s)

proc config*(i: Interpreter): ConfigRef = i.graph.config

proc register_exit_hook*(i: Interpreter, hook: proc (c: PCtx, pc: int, tos: PStackFrame)) =
  (PCtx i.graph.vm).exit_hook = hook

proc register_enter_hook*(i: Interpreter, hook: proc (c: PCtx, pc: int, tos: PStackFrame, instr: TInstr)) =
  (PCtx i.graph.vm).enter_hook = hook

proc register_leave_hook*(i: Interpreter, hook: proc (c: PCtx, pc: int, tos: PStackFrame, instr: TInstr)) =
  (PCtx i.graph.vm).leave_hook = hook
