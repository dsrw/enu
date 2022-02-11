import std / os
import std / [macros, sugar, sets, strutils, times, monotimes, sequtils, importutils, tables, options, math]
import pkg / [print, model_citizen]
import pkg / compiler / vm except get_int
import pkg / compiler / ast except new_node
import pkg / compiler / [vmdef, lineinfos, astalgo,  renderer, msgs]

import core, models / [types, states, bots, builds, units, colors], libs / [interpreters, eval]

type ScriptController* = ref object
  interpreter: Interpreter
  module_names: HashSet[string]
  active_unit: Unit
  unit_map: Table[PNode, Unit]
  node_map: Table[Unit, PNode]
  retry_failures: bool
  failed: seq[tuple[unit: Unit, e: ref VMQuit]]

include script_controllers/bindings

const
  advance_step* = 0.5.seconds
  error_code = some(99)

let state = GameState.active

var failed: seq[tuple[unit: Unit, ex: ref VMQuit]]

proc map_unit(self: ScriptController, unit: Unit, pnode: PNode) =
  self.unit_map[pnode] = unit
  self.node_map[unit] = pnode

proc unmap_unit(self: ScriptController, unit: Unit) =
  if unit in self.node_map:
    self.unit_map.del self.node_map[unit]
    self.node_map.del unit

proc get_unit(self: ScriptController, a: VmArgs, pos: int): Unit =
  let pnode = a.get_node(pos)
  self.unit_map[pnode]

proc get_bot(self: ScriptController, a: VmArgs, pos: int): Bot =
  let unit = self.get_unit(a, pos)
  assert not unit.is_nil and unit of Bot
  Bot(unit)

proc get_build(self: ScriptController, a: VmArgs, pos: int): Build =
  let unit = self.get_unit(a, pos)
  assert not unit.is_nil and unit of Build
  Build(unit)

proc to_node(self: ScriptController, unit: Unit): PNode =
  self.node_map[unit]

# Common bindings

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

proc active_unit(self: ScriptController): Unit = self.active_unit

proc begin_turn(self: ScriptController, unit: Unit, direction: Vector3, degrees: float, move_mode: int): string =
  var degrees = degrees
  var direction = direction
  let ctx = self.active_unit.script_ctx
  if degrees < 0:
    degrees = degrees * -1
    direction = direction * -1
  ctx.callback = unit.on_begin_turn(direction, degrees, move_mode)
  if not ctx.callback.is_nil:
    ctx.pause()

proc begin_move(self: ScriptController, unit: Unit, direction: Vector3, steps: float, move_mode: int) =
  var steps = steps
  var direction = direction
  let ctx = self.active_unit.script_ctx
  if steps < 0:
    steps = steps * -1
    direction = direction * -1
  ctx.callback = unit.on_begin_move(direction, steps, move_mode)
  if not ctx.callback.is_nil:
    ctx.pause()

proc sleep(ctx: ScriptCtx, seconds: float) =
  var duration = 0.0
  ctx.callback = proc(delta: float): bool =
    duration += delta
    return duration < seconds
  ctx.pause()

proc collision(unit_a: Unit, unit_b: Unit): Vector3 =
  for collision in unit_a.collisions:
    if collision.model == unit_b:
      return collision.normal.snapped(vec3(1, 1, 1))

proc echo_console(msg: string) =
  echo msg

proc action_running(self: Unit): bool =
  self.script_ctx.action_running

proc `action_running=`(self: Unit, value: bool) =
  if value:
    self.script_ctx.timer = get_mono_time() + advance_step
  else:
    self.script_ctx.timer = MonoTime.high
  self.script_ctx.action_running = value

proc global(self: Unit): bool =
  Global in self.flags

proc `global=`(self: Unit, global: bool) =
  if global:
    self.flags += Global
  else:
    self.flags -= Global

proc position(self: Unit): Vector3 =
  self.to_global(vec3(0, 0, 0))

proc `position=`(self: Unit, position: Vector3) =
  self.transform.origin = position

proc speed(self: Unit): float =
  self.speed

proc `speed=`(self: Unit, speed: float) =
  self.speed = speed

proc scale(self: Unit): float =
  self.scale.value

proc `scale=`(self: Unit, scale: float) =
  self.scale.value = scale

proc energy(self: Unit): float =
  self.energy.value

proc `energy=`(self: Unit, energy: float) =
  self.energy.value = energy

proc rotation(self: Unit): Vector3 =
  # TODO: fix this
  proc nm(f: float): float =
    if f.is_equal_approx(0):
      return 0
    elif f < 0:
      return f + (2 * PI)
    else:
      return f

  proc nm(v: Vector3): Vector3 =
    vec3(v.x.nm, v.y.nm, v.z.nm)

  let e = self.transform.basis.get_euler

  let n = e.nm
  let v = vec3(nm(n.x).rad_to_deg, nm(n.y).rad_to_deg, nm(n.z).rad_to_deg)
  let m = if v.z > 0: 1.0 else: -1.0
  result = vec3(0.0, (v.x - v.y) * m, 0.0)

proc yield_script(self: ScriptController, unit: Unit) =
  let ctx = unit.script_ctx
  ctx.callback = ctx.saved_callback
  ctx.saved_callback = nil
  ctx.pause()

proc exit(ctx: ScriptCtx, exit_code: int) =
  ctx.exit_code = some(exit_code)
  ctx.pause()
  ctx.running = false

# Bot bindings

proc play(self: Bot, animation_name: string) =
  self.animation.value = animation_name

# Build bindings

proc color(self: Build): Colors =
  action_index self.color

proc `color=`(self: Build, color: Colors) =
  self.color = action_colors[color]

proc drawing(self: Build): bool =
  self.drawing

proc `drawing=`(self: Build, drawing: bool) =
  self.drawing = drawing

proc initial_position(self: Build): Vector3 =
  self.initial_position

proc save(self: Build, name: string) =
  self.save_points[name] = (self.transform.value, self.color, self.drawing)

proc restore(self: Build, name: string) =
  (self.transform.value, self.color, self.drawing) = self.save_points[name]

proc reset(self: Build, clear: bool) =
  if clear:
    self.reset()
  else:
    self.reset_state()

# End of bindings

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
          ctx.action_running = false
          assert self.active_unit.is_nil
          self.active_unit = unit
          ctx.running = ctx.resume()
          if unit of Build:
            let unit = Build(unit)
            if unit.voxels_per_frame > 0 and ctx.running and unit.voxels_remaining_this_frame >= 1:
              resume_script = true
        elif now >= ctx.timer:
          ctx.timer = now + advance_step
          ctx.saved_callback = ctx.callback
          ctx.callback = nil
          self.active_unit = unit
          discard ctx.resume()
    except VMQuit as e:
      self.script_error(unit, e)
    finally:
      self.active_unit = nil

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

    if not state.paused:
      ctx.running = ctx.run()

  except VMQuit as e:
    ctx.running = false
    if self.retry_failures:
      self.failed.add (unit, e)
    else:
      self.script_error(unit, e)
  finally:
    self.active_unit = nil

proc remove_module*(self: ScriptController, file_name: string) =
  self.module_names.excl file_name.split_file.name

proc change_code(self: ScriptController, unit: Unit, code: string) =
  unit.reset()
  state.console.show_errors.value = false
  if code.strip == "" and file_exists(unit.script_file):
    remove_file unit.script_file
    self.remove_module unit.script_file
  elif code.strip != "":
    write_file(unit.script_file, code)
    if unit.script_ctx.is_nil:
      unit.script_ctx = ScriptCtx(timer: MonoTime.high, interpreter: self.interpreter)
    unit.script_ctx.script = unit.script_file
    self.load_script(unit)

proc watch_code(self: ScriptController, unit: Unit) =
  unit.code.changes:
    if added or touched:
      self.change_code(unit, change.item)

proc watch_units(self: ScriptController, units: ZenSeq[Unit]) =
  units.changes:
    let unit = change.item
    if added:
      unit.frame_delta.changes:
        if touched:
          self.advance_unit(unit, change.item)
      self.watch_code unit
      self.watch_units unit.units

      if not unit.clone_of and file_exists(unit.script_file):
        unit.code.value = read_file(unit.script_file)
    if removed:
      self.unmap_unit(unit)
      self.module_names.excl unit.script_ctx.module_name

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
      ctx.exit_code = error_code
      raise (ref VMQuit)(info: info, msg: msg)

  interpreter.register_enter_hook proc(c, pc, tos, instr: auto) =
    assert controller
    assert controller.active_unit
    assert controller.active_unit.script_ctx

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

  # Note: if we have multiple implementations of a proc that we want to bind (ie. sleep and scale)
  # we have to cast to the appropriate type to get the specific one we want.
  result.bind_procs "base_api", begin_turn, begin_move, register_active, echo_console, new_instance,
                    action_running, `action_running=`, yield_script, collision,
                    (proc(ctx: ScriptCtx, seconds: float))sleep, exit,
                    global, `global=`, position, `position=`, rotation, energy, `energy=`,
                    speed, `speed=`, (proc(self: Unit): float)scale, `scale=`, active_unit

  result.bind_procs "bots", play

  result.bind_procs "builds", (proc(self: Build): Colors)color, `color=`, drawing, `drawing=`, initial_position,
                    save, restore, (proc(self: Build, clear: bool))reset

when is_main_module:
  state.config.lib_dir = current_source_path().parent_dir / ".." / ".." / "vmlib"
  var b = Bot.init
  let c = ScriptController.init
