type
  type ScriptController = ref object
    retry_failures*: bool
    interpreter: Interpreter
    module_names: HashSet[string]
    active_unit: Unit
    unit_map: Table[PNode, Unit]
    node_map: Table[Unit, PNode]
    failed: seq[tuple[unit: Unit, e: ref VMQuit]]

  NodeController* = ref object
