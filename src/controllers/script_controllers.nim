import std / [macros, sugar, sets, os, strutils, times, monotimes, sequtils, importutils, tables]
import pkg / [print, model_citizen]
import pkg / compiler / vm except get_int
import pkg / compiler / ast except new_node
import pkg / compiler / [vmdef, options, lineinfos, astalgo,  renderer, msgs]

import core, models / [types, states, bots, units], libs / [interpreters, eval]

include script_controllers/converters

type ScriptController* = ref object
  interpreter: Interpreter
  module_names: HashSet[string]
  active_unit: Unit
  unit_map: Table[PNode, Unit]
  node_map: Table[Unit, PNode]

const ADVANCE_STEP* = 0.5.seconds

let state = GameState.active

var failed: seq[tuple[unit: Unit, ex: ref VMQuit]]

proc map_unit(self: ScriptController, unit: Unit, pnode: PNode) =
  self.unit_map[pnode] = unit
  self.node_map[unit] = pnode

proc get_unit(self: ScriptController, a: VmArgs, pos: int): Unit =
  let pnode = a.get_node(pos)
  self.unit_map[pnode]

proc begin_turn(self: ScriptController, unit: Unit, direction: Vector3, degrees: float): string =
  var degrees = degrees
  var direction = direction
  if degrees < 0:
    degrees = degrees * -1
    direction = direction * -1
  self.active_unit.script_ctx.callback = unit.on_begin_turn(direction, degrees, 1)
  if not self.active_unit.script_ctx.callback.is_nil:
    self.active_unit.script_ctx.pause()

proc begin_move(self: ScriptController, unit: Unit, direction: Vector3, steps: float) =
  var steps = steps
  var direction = direction
  if steps < 0:
    steps = steps * -1
    direction = direction * -1
  self.active_unit.script_ctx.callback = unit.on_begin_move(direction, steps, 1)
  if not self.active_unit.script_ctx.callback.is_nil:
    self.active_unit.script_ctx.pause()

proc register_active(self: ScriptController, pnode: PNode) =
  self.map_unit(self.active_unit, pnode)

proc new_instance(self: ScriptController, src: Unit, dest: PNode) =
  var clone = src.clone(self.active_unit)
  clone.script_ctx = ScriptCtx(timer: MonoTime.high, interpreter: self.interpreter,
                               module_name: src.script_ctx.module_name)
  self.map_unit(clone, dest)
  self.active_unit.units.add(clone)
  let active = self.active_unit
  self.active_unit = clone
  defer:
    self.active_unit = active
  discard clone.script_ctx.call_proc("run_script", dest)

proc echo_console(msg: string) =
  echo msg

macro bind_procs(self: ScriptController, proc_refs: varargs[typed]): untyped =
  let implement_routine = bind_sym "implement_routine"
  let set_result = bind_sym "set_result"

  result = new_stmt_list()
  result.add quote do:
    let script_controller {.inject.} = `self`

  for proc_ref in proc_refs:
    let
      proc_impl = proc_ref.get_impl
      proc_name = proc_impl[0].str_val
      return_node = proc_impl[3][0]
      arg_nodes = proc_impl[3][1..^1]

    let args = collect:
      var pos = -1
      for ident_def in arg_nodes:
        let typ = ident_def[1].str_val
        if typ == $ScriptController.type:
          ident"script_controller"
        elif typ in ["Unit", "Bot", "Build"]:
          let getter = "get_" & typ
          pos.inc
          new_call(bind_sym(getter), ident"script_controller", ident"a", new_lit(pos))
        else:
          let getter = "get_" & typ
          pos.inc
          new_call(bind_sym(getter), ident"a", new_lit(pos))

    var call = new_call(proc_ref, args)
    if return_node.kind == nnkSym:
      call = new_call(set_result, ident"a", new_call(bind_sym"to_node", call))

    result.add quote do:
      `self`.interpreter.`implement_routine` "*", "base_api", `proc_name`, proc(a {.inject.}: VmArgs) {.gcsafe.} =
        `call`

proc script_error(self: ScriptController, unit: Unit, e: ref VMQuit) =
  echo "error: ", e.msg

proc advance_unit(self: ScriptController, unit: Unit, delta: float) =
  let ctx = unit.script_ctx
  if ctx and ctx.running:
    let now = get_mono_time()

    if unit of Build:
      let unit = Build(unit)
      unit.voxels_remaining_this_frame += unit.voxels_per_frame
    var resume_script = true
    try:
      while resume_script and not state.paused:
        resume_script = false

        if ctx.callback == nil or (not ctx.callback(delta)):
          ctx.timer = MonoTime.high
          #discard ctx.call_proc("set_action_running", e.module_name, false)
          ctx.running = ctx.resume()
          if unit of Build:
            let unit = Build(unit)
            if unit.voxels_per_frame > 0 and ctx.running and unit.voxels_remaining_this_frame >= 1:
              resume_script = true
        elif now >= ctx.timer:
          ctx.timer = now + ADVANCE_STEP
          #e.saved_callback = e.callback
          #e.callback = nil
          # TODO
          #discard ctx.resume()
    except VMQuit as e:
      self.script_error(unit, e)

proc load_script(self: ScriptController, unit: Unit) =
  let ctx = unit.script_ctx
  self.active_unit = unit
  try:
    if not state.paused:
      let module_name = ctx.script.split_file.name
      var others = self.module_names
      self.module_names.incl module_name
      others.excl module_name
      let imports = if others.card > 0:
        "import " & others.to_seq.join(", ")
      else:
        ""
      let code = unit.code_template(imports)
      ctx.load(state.config.script_dir, ctx.script, code, state.config.lib_dir)
      # if not initialized:
      #   with ctx.engine:
      #     expose "yield_script", proc(a: VmArgs):bool =
      #       active_engine().callback = active_engine().saved_callback
      #       active_engine().saved_callback = nil
      #       true
      #
      #     expose "begin_move", a => self.begin_move(get_vec3(a, 0), get_float(a, 1), get_int(a, 2).int)
      #     expose "begin_turn", a => self.begin_turn(get_vec3(a, 0), get_float(a, 1), get_int(a, 2).int)
      #     expose "echo_console", proc(a: VmArgs): bool =
      #       let msg = a.get_string(0)
      #       echo msg
      #       state.console.log += msg
      #     expose "create_new", a => self.create_new()
      #     expose "collision", proc(a: VmArgs): bool =
      #       for collision in self.collisions:
      #         if collision.model == state.player:
      #           a.set_result(collision.normal.snapped(vec3(1, 1, 1)).to_node)
      #           return false
      #       a.set_result(vec3().to_node)
      #       false
      #     expose "sleep", proc(a: VmArgs): bool =
      #       self.load_vars()
      #       let seconds = get_float(a, 0)
      #       var duration = 0.0
      #       active_engine().callback = proc(delta: float): bool =
      #         duration += delta
      #         return duration < seconds
      #       true
      #     expose "quit", proc(a: VmArgs): bool =
      #       let e = active_engine()
      #       e.exit_code = some(a.get_int(0).int)
      #       e.pause()
      #       e.running = false
      #       result = false
      #     expose "set_global", proc(a: VmArgs): bool =
      #       let global = a.get_bool(0)
      #       if global:
      #         self.flags += Global
      #       else:
      #         self.flags -= Global
      #       false
      #     expose "get_global", proc(a: VmArgs): bool =
      #       a.set_result((Global in self.flags).to_node)
      #       false
      #     expose "get_position", proc(a: VmArgs): bool =
      #       let n = self.to_global(vec3(0, 0, 0)).to_node
      #       a.set_result(n)
      #       return false
      #     expose "set_position", proc(a: VmArgs): bool =
      #       let v = a.get_vec3(0)
      #       self.transform.origin = v
      #       false
      #     expose "get_rotation", proc(a: VmArgs): bool =
      #       # TODO: fix this
      #       proc nm(f: float): float =
      #         if f.is_equal_approx(0):
      #           return 0
      #         elif f < 0:
      #           return f + (2 * PI)
      #         else:
      #           return f
      #
      #       proc nm(v: Vector3): Vector3 =
      #         vec3(v.x.nm, v.y.nm, v.z.nm)
      #
      #       let e = self.transform.basis.get_euler
      #
      #       let n = e.nm
      #       let v = vec3(nm(n.x).rad_to_deg, nm(n.y).rad_to_deg, nm(n.z).rad_to_deg)
      #       let m = if v.z > 0: 1.0 else: -1.0
      #       let v2 = vec3(0.0, (v.x - v.y) * m, 0.0)
      #       a.set_result(v2.to_node)
      #       return false
      #  self.on_script_loaded()
    if not state.paused:
      ctx.running = ctx.run()
      #self.update_running_state ctx.run()

  except VMQuit as e:
    #if retry_failures:
    ctx.running = false
      #failed.add (self, e)
    #else:
    #  discard
      #self.error(e)
  finally:
    self.active_unit = nil

proc remove_module*(self: ScriptController, file_name: string) =
  self.module_names.excl file_name.split_file.name

proc change_code(self: ScriptController, unit: Unit, code: string) =

  # if not retry_failures:
  #   state.paused = false
  unit.reset()
  state.console.show_errors.value = false
  if code.strip == "" and file_exists(unit.script_file):
    remove_file unit.script_file
    self.remove_module unit.script_file
  elif code.strip != "":
    write_file(unit.script_file, code)
    if unit.script_ctx.is_nil:
      unit.script_ctx = ScriptCtx(timer: MonoTime.high, interpreter: self.interpreter)
      #unit_ctxs[unit.script_ctx.engine] = unit
    unit.script_ctx.script = unit.script_file

    self.load_script(unit)

proc watch_code(self: ScriptController, unit: Unit) =
  unit.code.changes:
    if added or touched:
      self.change_code(unit, change.item)

proc watch_units(self: ScriptController, units: ZenSeq[Unit]) =
  units.changes:
    if added:
      let unit = change.item
      unit.frame_delta.changes:
        if touched:
          self.advance_unit(unit, change.item)
      self.watch_code unit
      self.watch_units unit.units

      if not unit.clone_of and file_exists(unit.script_file):
        unit.code.value = read_file(unit.script_file)

proc reload_all*(self: ScriptController) =
  # TODO?
  # reset_interpreter()
  walk_tree state.units.value, proc(unit: Unit) =
    unit.script_ctx = nil
    unit.code.touch unit.code.value

proc init*(_: type ScriptController): ScriptController =
  private_access ScriptCtx

  let interpreter = Interpreter.init(state.config.script_dir, state.config.lib_dir)
  let controller = ScriptController(interpreter: interpreter)

  interpreter.register_error_hook proc(config, info, msg, severity: auto) {.gcsafe.} =
    let ctx = controller.active_unit.script_ctx
    if severity == Severity.Error and config.error_counter >= config.error_max:
      let file_name = if info.file_index.int >= 0:
        config.m.file_infos[info.file_index.int].full_path.string
      else:
        "???"
      let msg = &"{file_name}({int info.line},{int info.col}): {msg}"
      echo "error: ", msg, " from ", ctx.file_name
      ctx.errors.add (msg, info)
      #ctx.exit_code = some(99)
      raise (ref VMQuit)(info: info, msg: msg)

  interpreter.register_enter_hook proc(c, pc, tos, instr: auto) =
    let ctx = controller.active_unit.script_ctx
    let info = c.debug[pc]

    if ctx.previous_line != info:
      let config = interpreter.config
      if info.file_index.int >= 0 and info.file_index.int < config.m.file_infos.len:
        let file_name = config.m.file_infos[info.file_index.int].full_path.string
        if file_name == ctx.file_name:
          if ctx.line_changed != nil:
            ctx.line_changed(info, ctx.previous_line)
          (ctx.previous_line, ctx.current_line) = (ctx.current_line, info)

    if ctx.pause_requested:
      ctx.pause_requested = false
      ctx.ctx = c
      ctx.pc = pc
      ctx.tos = tos
      raise new_exception(VMPause, "vm paused")

  result = controller
  result.watch_units state.units

  result.bind_procs begin_turn, begin_move, register_active, echo_console, new_instance

when is_main_module:
  state.config.lib_dir = current_source_path().parent_dir / ".." / ".." / "vmlib"
  var b = Bot.init
  let c = ScriptController.init
