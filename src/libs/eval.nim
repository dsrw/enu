import compiler / [syntaxes, reorder]
import compiler / passes {.all.}
import compiler / msgs

{.warning[UnusedImport]: off.}
include compiler / nimeval

export Interpreter, VmArgs, PCtx, PStackFrame, TLineInfo

# adapted from
# https://github.com/nim-lang/Nim/blob/version-1-6/compiler/passes.nim#L120
# Normal module loading procedure, but makes TPassContextArray a var param
# so it can be passed to extend_module
when (NimMajor, NimMinor) >= (1, 7):
  proc processModule*(graph: ModuleGraph; module: PSym; idgen: IdGenerator;
                      stream: PLLStream; a: var TPassContextArray): bool {.discardable.} =
    if graph.stopCompile(): return true
    var
      p: Parser
      s: PLLStream
      fileIdx = module.fileIdx
    prepareConfigNotes(graph, module)
    openPasses(graph, a, module, idgen)
    if stream == nil:
      let filename = toFullPathConsiderDirty(graph.config, fileIdx)
      s = llStreamOpen(filename, fmRead)
      if s == nil:
        rawMessage(graph.config, errCannotOpenFile, filename.string)
        return false
    else:
      s = stream

    when defined(nimsuggest):
      let filename = toFullPathConsiderDirty(graph.config, fileIdx).string
      msgs.setHash(graph.config, fileIdx, $sha1.secureHashFile(filename))

    while true:
      openParser(p, fileIdx, s, graph.cache, graph.config)

      if not belongsToStdlib(graph, module) or (belongsToStdlib(graph, module) and module.name.s == "distros"):
        # XXX what about caching? no processing then? what if I change the
        # modules to include between compilation runs? we'd need to track that
        # in ROD files. I think we should enable this feature only
        # for the interactive mode.
        if module.name.s != "nimscriptapi":
          processImplicits graph, graph.config.implicitImports, nkImportStmt, a, module
          processImplicits graph, graph.config.implicitIncludes, nkIncludeStmt, a, module

      checkFirstLineIndentation(p)
      while true:
        if graph.stopCompile(): break
        var n = parseTopLevelStmt(p)
        if n.kind == nkEmpty: break
        if (sfSystemModule notin module.flags and
            ({sfNoForward, sfReorder} * module.flags != {} or
            codeReordering in graph.config.features)):
          # read everything, no streaming possible
          var sl = newNodeI(nkStmtList, n.info)
          sl.add n
          while true:
            var n = parseTopLevelStmt(p)
            if n.kind == nkEmpty: break
            sl.add n
          if sfReorder in module.flags or codeReordering in graph.config.features:
            sl = reorder(graph, sl, module)
          discard processTopLevelStmt(graph, sl, a)
          break
        elif n.kind in imperativeCode:
          # read everything until the next proc declaration etc.
          var sl = newNodeI(nkStmtList, n.info)
          sl.add n
          var rest: PNode = nil
          while true:
            var n = parseTopLevelStmt(p)
            if n.kind == nkEmpty or n.kind notin imperativeCode:
              rest = n
              break
            sl.add n
          #echo "-----\n", sl
          if not processTopLevelStmt(graph, sl, a): break
          if rest != nil:
            #echo "-----\n", rest
            if not processTopLevelStmt(graph, rest, a): break
        else:
          #echo "----- single\n", n
          if not processTopLevelStmt(graph, n, a): break
      closeParser(p)
      if s.kind != llsStdIn: break
    closePasses(graph, a)
    if graph.config.backend notin {backendC, backendCpp, backendObjc}:
      # We only write rod files here if no C-like backend is active.
      # The C-like backends have been patched to support the IC mechanism.
      # They are responsible for closing the rod files. See `cbackend.nim`.
      closeRodFile(graph, module)
    result = true

else:

  proc processModule*(graph: ModuleGraph; module: PSym; idgen: IdGenerator;
                      stream: PLLStream, a: var TPassContextArray): bool {.discardable.} =
    if graph.stopCompile(): return true
    var
      p: Parser
      s: PLLStream
      fileIdx = module.fileIdx
    prepareConfigNotes(graph, module)
    openPasses(graph, a, module, idgen)
    if stream == nil:
      let filename = toFullPathConsiderDirty(graph.config, fileIdx)
      s = llStreamOpen(filename, fmRead)
      if s == nil:
        rawMessage(graph.config, errCannotOpenFile, filename.string)
        return false
    else:
      s = stream

    when defined(nimsuggest):
      let filename = toFullPathConsiderDirty(graph.config, fileIdx).string
      msgs.setHash(graph.config, fileIdx, $sha1.secureHashFile(filename))

    while true:
      openParser(p, fileIdx, s, graph.cache, graph.config)

      if not belongsToStdlib(graph, module) or (belongsToStdlib(graph, module) and module.name.s == "distros"):
        # XXX what about caching? no processing then? what if I change the
        # modules to include between compilation runs? we'd need to track that
        # in ROD files. I think we should enable this feature only
        # for the interactive mode.
        if module.name.s != "nimscriptapi":
          processImplicits graph, graph.config.implicitImports, nkImportStmt, a, module
          processImplicits graph, graph.config.implicitIncludes, nkIncludeStmt, a, module

      while true:
        if graph.stopCompile(): break
        var n = parseTopLevelStmt(p)
        if n.kind == nkEmpty: break
        if (sfSystemModule notin module.flags and
            ({sfNoForward, sfReorder} * module.flags != {} or
            codeReordering in graph.config.features)):
          # read everything, no streaming possible
          var sl = newNodeI(nkStmtList, n.info)
          sl.add n
          while true:
            var n = parseTopLevelStmt(p)
            if n.kind == nkEmpty: break
            sl.add n
          if sfReorder in module.flags or codeReordering in graph.config.features:
            sl = reorder(graph, sl, module)
          discard processTopLevelStmt(graph, sl, a)
          break
        elif n.kind in imperativeCode:
          # read everything until the next proc declaration etc.
          var sl = newNodeI(nkStmtList, n.info)
          sl.add n
          var rest: PNode = nil
          while true:
            var n = parseTopLevelStmt(p)
            if n.kind == nkEmpty or n.kind notin imperativeCode:
              rest = n
              break
            sl.add n
          #echo "-----\n", sl
          if not processTopLevelStmt(graph, sl, a): break
          if rest != nil:
            #echo "-----\n", rest
            if not processTopLevelStmt(graph, rest, a): break
        else:
          #echo "----- single\n", n
          if not processTopLevelStmt(graph, n, a): break
      closeParser(p)
      if s.kind != llsStdIn: break
    closePasses(graph, a)
    if graph.config.backend notin {backendC, backendCpp, backendObjc}:
      # We only write rod files here if no C-like backend is active.
      # The C-like backends have been patched to support the IC mechanism.
      # They are responsible for closing the rod files. See `cbackend.nim`.
      closeRodFile(graph, module)
    result = true

# from nimeval. Added moduleName
proc selectUniqueSymbol*(i: Interpreter; name: string;
  symKinds: set[TSymKind] = {skLet, skVar}; moduleName: string): PSym =
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
proc selectRoutine*(i: Interpreter; name: string, module_name: string): PSym =
  ## Selects a declared routine (proc/func/etc) from the main module.
  ## The routine needs to have the export marker ``*``. The only matching
  ## routine is returned and ``nil`` if it is overloaded.
  {.gcsafe.}:
    result = selectUniqueSymbol(i, name, {skTemplate, skMacro, skFunc,
      skMethod, skProc, skConverter}, moduleName)

proc resetModule*(i: Interpreter, moduleName: string) =
  for iface in i.graph.ifaces:
    if iface.module != nil and iface.module.name.s == moduleName:
      initStrTables(i.graph, iface.module)
      iface.module.ast = nil
      break

proc loadModule*(i: Interpreter, fileName, code: string,
  a: var TPassContextArray) {.gcsafe.} =

  assert i != nil

  var module: PSym
  let moduleName = fileName.splitFile.name
  for iface in i.graph.ifaces:
    if iface.module != nil and iface.module.name.s == moduleName:
      module = iface.module
      break

  if module.isNil:
    {.gcsafe.}:
      module = i.graph.makeModule(fileName)

  initStrTables(i.graph, module)
  module.ast = nil
  var stream = llStreamOpen(code)

  # after some kinds of errors the vm will switch back to emStaticStmt mode,
  # which causes "cannot evaluate at compile time" issues with some variables.
  # Force things back to emRepl.
  PCtx(i.graph.vm).mode = emRepl
  {.gcsafe.}:
    discard processModule(i.graph, module, i.idgen, stream, a)

# adapted from
# https://github.com/nim-lang/Nim/blob/version-1-6/compiler/passes.nim#L120
proc extendModule(graph: ModuleGraph; a: var TPassContextArray, module: PSym;
    idgen: IdGenerator; stream: PLLStream): bool {.discardable.} =

  if graph.stopCompile(): return true
  var
    p: Parser
    s = stream
    fileIdx = module.fileIdx

  while true:
    openParser(p, fileIdx, s, graph.cache, graph.config)

    while true:
      if graph.stopCompile(): break
      var n = parseTopLevelStmt(p)
      if n.kind == nkEmpty: break
      if (sfSystemModule notin module.flags and
          ({sfNoForward, sfReorder} * module.flags != {} or
          codeReordering in graph.config.features)):
        # read everything, no streaming possible
        var sl = newNodeI(nkStmtList, n.info)
        sl.add n
        while true:
          var n = parseTopLevelStmt(p)
          if n.kind == nkEmpty: break
          sl.add n

        discard processTopLevelStmt(graph, sl, a)
        break
      elif n.kind in imperativeCode:
        # read everything until the next proc declaration etc.
        var sl = newNodeI(nkStmtList, n.info)
        sl.add n
        var rest: PNode = nil
        while true:
          var n = parseTopLevelStmt(p)
          if n.kind == nkEmpty or n.kind notin imperativeCode:
            rest = n
            break
          sl.add n
        if not processTopLevelStmt(graph, sl, a): break
        if rest != nil:
          if not processTopLevelStmt(graph, rest, a): break
      else:
        if not processTopLevelStmt(graph, n, a): break
    closeParser(p)
    if s.kind != llsStdIn: break
  result = true

proc eval*(i: Interpreter, a: var TPassContextArray, fileName, code: string) =
  ## This can also be used to *reload* the script.
  assert i != nil
  var module: PSym
  let moduleName = fileName.splitFile.name
  for iface in i.graph.ifaces:
    if iface.module != nil and iface.module.name.s == moduleName:
      module = iface.module
      break

  assert module != nil, "no valid module selected"
  let s = llStreamOpen(code)
  extendModule(i.graph, a, module, i.idgen, s)

proc config*(i: Interpreter): ConfigRef = i.graph.config

proc registerExitHook*(i: Interpreter, hook: proc (c: PCtx, pc: int, tos: PStackFrame)) =
  (PCtx i.graph.vm).exitHook = hook

proc registerEnterHook*(i: Interpreter, hook: proc (c: PCtx, pc: int, tos: PStackFrame, instr: TInstr)) =
  (PCtx i.graph.vm).enterHook = hook

proc registerLeaveHook*(i: Interpreter, hook: proc (c: PCtx, pc: int, tos: PStackFrame, instr: TInstr)) =
  (PCtx i.graph.vm).leaveHook = hook
