import std / [macros, strutils]
import shared / errors

proc get_last_error_impl(): ErrorData =
  raise_assert "get_last_error_impl must be implemented by host"

proc check_errors* =
  let err = get_last_error_impl().to_exception
  if err != nil:
    raise err

proc get_name(node: NimNode): string =
  result = case node.kind:
    of nnk_ident:
      $node.str_val
    of nnk_postfix:
      get_name(node[1])
    of nnk_acc_quoted:
      $node[0].str_val & $node[1].str_val
    else:
      raise_assert "Can't handle " & $node.kind

macro bridged_to_host*(body: untyped): untyped =
  result = new_stmt_list()
  var defs = new_stmt_list()
  var calls = new_stmt_list()
  for node in body:
    if node.kind == nnk_proc_def:
      let impl_proc = get_name(node[0]).replace("=", "_set") & "_impl"
      let params = node.params
      var call = new_call impl_proc
      var def = copy_nim_tree(node)
      def.body = quote do:
        raise_assert `impl_proc` & " must be implemented by host"
      def[0] = ident(impl_proc)

      if params.len > 1:
        for defs in params[1..^1]:
          call.add(defs[0..^3])
      node.body = if params[0].kind == nnk_empty:
        quote do:
          `call`
          check_errors()
      else:
        quote do:
          result = `call`
          check_errors()

      defs.add def
      calls.add node

  result.add(defs)
  result.add(calls)

when is_main_module:
  type
    Unit = ref object
    Vector3 = object
    Colors = object

  proc check_errors = discard

  bridged_to_host:
    proc write_stack_trace*()
    proc id*(self: Unit): string
    proc position*(self: Unit): Vector3
    proc local_position*(self: Unit): Vector3
    proc start_position*(self: Unit): Vector3
    proc speed*(self: Unit): float
    proc `speed=`*(self: Unit, speed: float)
    proc scale*(self: Unit): float
    proc `scale=`*(self: Unit, scale: float)
    proc glow*(self: Unit): float
    proc `glow=`*(self: Unit, energy: float)
    proc global*(self: Unit): bool
    proc `global=`*(self: Unit, global: bool)
    proc rotation(self: Unit): float
    proc `rotation=`(self: Unit, degrees: float)
    proc hit*(self: Unit, node: Unit): Vector3
    proc `velocity=`*(self: Unit, velocity: Vector3)
    proc velocity*(self: Unit): Vector3
    proc color*(self: Unit): Colors
    proc `color=`*(self: Unit, color: Colors)
    proc seen*(node: Unit, less_than = 100.0): bool
    proc show*(self: Unit): bool
    proc `show=`*(self: Unit, value: bool)
    proc frame_created*(self: Unit): int
    proc lock*(self: Unit): bool
    proc `lock=`*(self: Unit, value: bool)
    proc reset*(self: Unit, clear = false)
    proc press_action*(name: string)

    # TODO: These should be in base_bridge_private, but are currently needed outside of base_api.
    proc echo_console*(msg: string)
    proc exit*(exit_code = 0, msg = "")
    proc new_instance*(src, dest: Unit)
    proc exec_instance*(self: Unit)
    proc wake*(self: Unit)
    proc link_dependency*(dep: not Unit)
    proc create_new*(self: Unit)
    proc frame_count*()
