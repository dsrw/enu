import std /
  [os, macros, sugar, sets, strutils, times, monotimes, sequtils, importutils,
  tables, options, math, re]
import locks except Lock
import pkg / godot except print
import pkg / print
import pkg / compiler / vm except get_int
import pkg / compiler / ast except new_node
import pkg / compiler / [vmdef, lineinfos, astalgo,  renderer, msgs]
import godotapi / [spatial, ray_cast, voxel_terrain]
import core, models /
  [states, bots, builds, units, colors, signs, players]
import libs / [interpreters, eval]

from pkg/compiler/vm {.all.} import stack_trace_aux

proc retry_failed_scripts*(self: ScriptController)

import models / serializers

type
  ScriptEngine = ref object
    retry_failures: bool
    interpreter: Interpreter
    module_names: HashSet[string]
    active_unit: Unit
    unit_map: Table[PNode, Unit]
    node_map: Table[Unit, PNode]
    failed: seq[tuple[unit: Unit, e: ref VMQuit]]

include script_controllers/bindings

const
  advance_step* = 0.5.seconds
  error_code = some(99)
  script_timeout = 5.0.seconds

#var state {.thread_var.}: GameState
#state = GameState.active

var
  retry_failures* = false
  worker_thread: system.Thread[tuple[ctx: ZenContext, state: GameState]]

var engine: ScriptEngine

private_access ScriptCtx

proc map_unit(self: ScriptEngine, unit: Unit, pnode: PNode) =
  self.unit_map[pnode] = unit
  self.node_map[unit] = pnode

proc unmap_unit(self: ScriptEngine, unit: Unit) =
  if unit in self.node_map:
    self.unit_map.del self.node_map[unit]
    self.node_map.del unit

proc link_dependency_impl(self: ScriptEngine, dep: Unit) =
  let dep = dep.find_root
  let active = self.active_unit.find_root
  p "id: ", dep.id
  p &"**reloading {dep.script_ctx.module_name} will reload {active.script_ctx.module_name}"
  dep.script_ctx.dependents.incl active.script_ctx.module_name

proc write_stack_trace(self: ScriptEngine) =
  let ctx = self.active_unit.script_ctx
  msg_writeln(ctx.ctx.config, "stack trace: (most recent call last)", {msgNoUnitSep})
  stack_trace_aux(ctx.ctx, ctx.tos, ctx.pc)

proc get_unit(self: ScriptEngine, a: VmArgs, pos: int): Unit =
  let pnode = a.get_node(pos)
  result = self.unit_map[pnode]

proc get_bot(self: ScriptEngine, a: VmArgs, pos: int): Bot =
  let unit = self.get_unit(a, pos)
  assert not unit.is_nil and unit of Bot
  Bot(unit)

proc get_build(self: ScriptEngine, a: VmArgs, pos: int): Build =
  let unit = self.get_unit(a, pos)
  assert not unit.is_nil and unit of Build
  Build(unit)

proc get_sign(self: ScriptEngine, a: VmArgs, pos: int): Sign =
  let unit = self.get_unit(a, pos)
  assert not unit.is_nil and unit of Sign
  Sign(unit)

proc to_node(self: ScriptEngine, unit: Unit): PNode =
  if ?unit:
    self.node_map[unit]
  else:
    ast.new_node(nkNilLit)

# Common bindings

proc press_action(self: ScriptEngine, name: string) =
  state.queued_action = name

proc register_active(self: ScriptEngine, pnode: PNode) =
  assert not self.active_unit.is_nil
  self.map_unit(self.active_unit, pnode)

proc new_instance(self: ScriptEngine, src: Unit, dest: PNode) =
  let id = src.id & "_" & self.active_unit.id & "_instance_" & $(self.active_unit.units.len + 1)
  var clone = src.clone(self.active_unit, id)
  assert not clone.is_nil
  clone.script_ctx = ScriptCtx(timer: MonoTime.high, interpreter: self.interpreter,
                               module_name: src.id, timeout_at: MonoTime.high)
  self.map_unit(clone, dest)
  self.active_unit.units.add(clone)
  clone.reset

proc exec_instance(self: ScriptEngine, unit: Unit) =
  let active = self.active_unit
  let ctx = unit.script_ctx
  self.active_unit = unit
  defer:
    self.active_unit = active
  ctx.timeout_at = get_mono_time() + script_timeout
  ctx.running = ctx.call_proc("run_script", self.node_map[unit], true).paused

proc active_unit(self: ScriptEngine): Unit = self.active_unit

proc begin_turn(self: ScriptEngine, unit: Unit, direction: Vector3, degrees: float, lean: bool, move_mode: int): string =
  assert not degrees.is_nan
  var degrees = floor_mod(degrees, 360)
  let ctx = self.active_unit.script_ctx
  ctx.callback = unit.on_begin_turn(direction, degrees, lean, move_mode)
  if not ctx.callback.is_nil:
    ctx.pause()

proc begin_move(self: ScriptEngine, unit: Unit, direction: Vector3, steps: float, move_mode: int) =
  var steps = steps
  var direction = direction
  let ctx = self.active_unit.script_ctx
  if steps < 0:
    steps = steps * -1
    direction = direction * -1
  ctx.callback = unit.on_begin_move(direction, steps, move_mode)
  if not ctx.callback.is_nil:
    ctx.pause()

proc sleep_impl(ctx: ScriptCtx, seconds: float) =
  var duration = 0.0
  ctx.callback = proc(delta: float): TaskStates =
    duration += delta
    if seconds > 0 and duration < seconds:
      Running
    elif seconds <= 0 and duration <= 0.5 and ctx.timer > get_mono_time():
      Running
    else:
      Done
  ctx.pause()

proc hit(unit_a: Unit, unit_b: Unit): Vector3 =
  for collision in unit_a.collisions:
    if collision.model == unit_b:
      return collision.normal.snapped(vec3(1, 1, 1))

proc echo_console(msg: string) =
  p msg
  state.console.log += msg & "\n"
  state.push_flag ConsoleVisible

proc action_running(self: Unit): bool =
  self.script_ctx.action_running

proc `action_running=`(self: Unit, value: bool) =
  if value:
    self.script_ctx.timer = get_mono_time() + advance_step
  else:
    self.script_ctx.timer = MonoTime.high
  self.script_ctx.action_running = value

proc id(self: Unit): string = self.id

proc global(self: Unit): bool =
  Global in self.flags

proc `global=`(self: Unit, global: bool) =
  if global:
    self.flags += Global
  else:
    self.flags -= Global

proc lock(self: Unit): bool =
  Lock in self.flags

proc `lock=`(self: Unit, value: bool) =
  if value:
    self.flags += Lock
  else:
    self.flags -= Lock

proc local_position(self: Unit): Vector3 =
  self.transform.origin

proc position(self: Unit): Vector3 =
  if Global in self.flags:
    self.transform.origin
  else:
    self.parent.node.to_global(self.transform.origin)

proc start_position(self: Unit): Vector3 =
  if Global in self.flags:
    self.start_transform.origin
  else:
    self.parent.node.to_global(self.start_transform.origin)

proc `position=impl`(self: Unit, position: Vector3) =
  var position = position
  if self of Player and position.y <= 0:
    position.y = 0.1

  if Global in self.flags:
    self.transform.origin = position
  else:
    self.transform.origin = self.parent.node.to_local(position)

proc speed(self: Unit): float =
  self.speed

proc `speed=`(self: Unit, speed: float) =
  self.speed = speed

proc scale(self: Unit): float =
  self.scale.value

proc `scale=`(self: Unit, scale: float) =
  self.scale.value = scale

proc glow(self: Unit): float =
  self.glow.value

proc `glow=`(self: Unit, glow: float) =
  self.glow.value = glow

proc velocity(self: Unit): Vector3 =
  self.velocity.value

proc `velocity=`(self: Unit, velocity: Vector3) =
  self.velocity.value = velocity

proc color(self: Unit): Colors =
  action_index self.color.value

proc `color=`(self: Unit, color: Colors) =
  self.color.value = action_colors[color]

proc show(self: Unit): bool =
  Visible in self.flags

proc `show=`(self: Unit, value: bool) =
  if value:
    self.flags += Visible
  else:
    self.flags -= Visible

proc rotation(self: Unit): float =
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

  if self of Player:
    result = Player(self).rotation.value
  else:
    let e = self.transform.basis.orthonormalized.get_euler

    let n = e.nm
    let v = vec3(nm(n.x).rad_to_deg, nm(n.y).rad_to_deg, nm(n.z).rad_to_deg)
    let m = if v.z > 0: 1.0 else: -1.0
    result = (v.x - v.y) * m

proc `rotation=`(self: Unit, degrees: float) =
  var t = Transform.init
  if self of Player:
    Player(self).rotation.touch degrees
    t.origin = self.transform.origin
  else:
    t = Transform.init
    var s = self.scale.value
    t = t.rotated(UP, deg_to_rad(degrees)).scaled(vec3(s, s, s))
    t.origin = self.transform.value.origin
  self.transform.value = t

proc seen(self: ScriptEngine, target: Unit, distance: float): bool =
  if target == state.player.value and Flying in state.flags:
    return false
  let unit = self.active_unit
  if unit of Build:
    let ray = Build(unit).sight_ray
    let node = VoxelTerrain(Build(unit).node)
    let target_position = unit.node.to_local(target.position)
    let angle = target_position - ray.transform.origin
    if angle.length <= distance and angle.normalized.z <= -0.3:
      ray.cast_to = angle
      var old_layer = node.collision_layer
      node.collision_layer = 0
      ray.force_raycast_update
      if ray.is_colliding:
        let collider = ray.get_collider as Spatial
        if collider == target.node:
          result = true
      node.collision_layer = old_layer

proc wake(self: Unit) =
  self.script_ctx.timer = get_mono_time()

proc yield_script(self: ScriptEngine, unit: Unit) =
  let ctx = unit.script_ctx
  ctx.callback = ctx.saved_callback
  ctx.saved_callback = nil
  ctx.pause()

proc exit(ctx: ScriptCtx, exit_code: int) =
  ctx.exit_code = some(exit_code)
  ctx.pause()
  ctx.running = false

proc frame_count(): int = state.frame_count

proc frame_created(unit: Unit): int =
  unit.frame_created

proc drop_transform(unit: Unit): Transform =
  if unit of Bot:
    result = Transform.init
  elif unit of Build:
    result = Build(unit).draw_transform
    result.origin = result.origin.snapped(vec3(1, 1, 1))
    result = result.translated(FORWARD * 0.51)
    result.origin = result.origin - (FORWARD + LEFT + DOWN) * 0.5
  else:
    raise ObjectConversionDefect.init("Unknown unit type")

proc new_markdown_sign_impl(self: ScriptEngine,
  unit: Unit, pnode: PNode, markdown: string, title: string, width: float,
  height: float, size: int, zoomable: bool, billboard: bool): Unit =

  result = Sign.init(
    markdown, title = title, owner = self.active_unit,
    transform = drop_transform(unit), width = width, height = height,
    size = size, zoomable = zoomable, billboard = billboard)

  self.map_unit(result, pnode)
  unit.units.add(result)

proc reset(self: Unit, clear: bool) =
  if clear:
    if self of Build: Build(self).reset()
    elif self of Bot: Bot(self).reset()
  else:
    if self of Build: Build(self).reset_state()
    elif self of Bot: Bot(self).reset_state()

# Bot bindings

proc play(self: Bot, animation_name: string) =
  self.animation.value = animation_name

proc all_units(T: type Unit, self: ScriptEngine): PNode =
  var node = ast.new_node(nkBracketExpr)
  state.units.value.walk_tree proc(unit: Unit) =
    if unit of T:
      # objects without scripts won't show up in the node map. Create
      # a new dummy object
      if unit notin self.node_map:
        var node = self.node_map[self.active_unit].copy_tree
        self.map_unit(unit, node)
      node.add self.to_node(unit)
  result = node

proc all_bots(self: ScriptEngine): PNode =
  Bot.all_units(self)

# Build bindings

proc all_builds(self: ScriptEngine): PNode =
  Build.all_units(self)

proc drawing(self: Build): bool =
  self.drawing

proc `drawing=`(self: Build, drawing: bool) =
  self.drawing = drawing

proc initial_position(self: Build): Vector3 =
  self.initial_position

proc save(self: Build, name: string) =
  self.save_points[name] = (self.draw_transform, self.color.value, self.drawing)

proc restore(self: Build, name: string) =
  (self.draw_transform, self.color.value, self.drawing) = self.save_points[name]

# Player binding

proc playing(self: Unit): bool =
  Playing in state.flags

proc `playing=`*(self: Unit, value: bool) =
  state.set_flag Playing, value

proc god(self: Unit): bool =
  God in state.flags

proc `god=`*(self: Unit, value: bool) =
  state.set_flag God, value

proc flying(self: Unit): bool =
  Flying in state.flags

proc `flying=`*(self: Unit, value: bool) =
  state.set_flag Flying, value

proc tool(self: Unit): int =
  int(state.tool.value)

proc `tool=`(self: Unit, value: int) =
  state.tool.value = Tools(value)

# Sign bindings
proc title(self: Sign): string =
  self.title.value

proc `title=`(self: Sign, value: string) =
  self.title.value = value

proc markdown(self: Sign): string =
  self.markdown.value

proc `markdown=`(self: Sign, value: string) =
  self.markdown.value = value

proc width(self: Sign): float =
  self.width

proc `width=`(self: Sign, value: float) =
  self.width = value
  self.title.touch self.title.value

proc height(self: Sign): float =
  self.height

proc `height=`(self: Sign, value: float) =
  self.height = value
  self.title.touch self.title.value

proc size(self: Sign): int =
  self.size

proc `size=`(self: Sign, value: int) =
  self.size = value
  self.title.touch self.title.value

proc open(self: Sign): bool =
  state.open_sign.value == self

proc `open=`(self: Sign, value: bool) =
  if value:
    state.open_sign.value = self
  elif not value and self.open:
    state.open_sign.value = nil

proc coding(self: Unit): Unit =
  state.open_unit.value

proc `coding=`(self: Unit, value: Unit) =
  state.open_unit.value = value

# End of bindings

proc script_error(self: ScriptEngine, unit: Unit, e: ref VMQuit) =
  state.logger("err", e.msg)
  unit.ensure_visible
  state.push_flags ConsoleVisible

proc advance_unit(self: ScriptEngine, unit: Unit, delta: float) =
  let ctx = unit.script_ctx
  if ?ctx and ctx.running:
    let now = get_mono_time()

    if unit of Build:
      let unit = Build(unit)
      unit.voxels_remaining_this_frame += unit.voxels_per_frame
    var resume_script = true
    try:
      assert self.active_unit.is_nil
      var task_state = Done

      while resume_script and not state.paused:
        resume_script = false

        if ctx.callback == nil:
          ctx.timer = MonoTime.high
          ctx.action_running = false
          self.active_unit = unit
          ctx.timeout_at = get_mono_time() + script_timeout
          ctx.running = ctx.resume()
          if not ctx.running and not ?unit.clone_of:
            unit.collect_garbage
            unit.ensure_visible

        elif now >= ctx.timer:
          ctx.timer = now + advance_step
          ctx.saved_callback = ctx.callback
          ctx.callback = nil
          self.active_unit = unit
          ctx.timeout_at = get_mono_time() + script_timeout
          discard ctx.resume()

    except VMQuit as e:
      self.interpreter.reset_module(unit.script_ctx.module_name)
      self.script_error(unit, e)
    finally:
      self.active_unit = nil

proc load_script(self: ScriptEngine, unit: Unit, timeout = script_timeout) =
  let ctx = unit.script_ctx
  try:
    self.active_unit = unit

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
      ctx.timeout_at = get_mono_time() + timeout
      p "loading script: ", ctx.script
      ctx.load(ctx.script, code)

    if not state.paused:
      ctx.timeout_at = get_mono_time() + timeout
      ctx.running = ctx.run()
      if not ctx.running and not ?unit.clone_of:
        unit.collect_garbage
        unit.ensure_visible

  except VMQuit as e:
    ctx.running = false
    self.interpreter.reset_module(unit.script_ctx.module_name)
    if retry_failures and e.kind != Timeout:
      self.failed.add (unit, e)
    else:
      self.script_error(unit, e)
  finally:
    self.active_unit = nil

proc retry_failed_scripts(self: ScriptEngine) =
  var prev_failed: self.failed.type = @[]
  while prev_failed.len != self.failed.len:
    prev_failed = self.failed
    self.failed = @[]
    for f in prev_failed:
      p "retrying: ", f.unit.script_ctx.script
      self.load_script(f.unit)

  for f in prev_failed:
    self.script_error(f.unit, f.e)
  self.failed = @[]

proc retry_failed_scripts*(self: ScriptController) =
  discard

proc load_script_and_dependents(self: ScriptEngine, unit: Unit) =
  var previous: HashSet[Unit]
  var units_by_module: Table[string, Unit]
  var units_to_reload: HashSet[Unit]

  #save_world()

  units_to_reload.incl unit
  state.reloading = true
  self.retry_failures = true

  for other in state.units.value:
    if ?other.script_ctx:
      units_by_module[other.script_ctx.module_name] = other

  while units_to_reload != previous:
    previous = units_to_reload
    for unit in previous:
      for dep in unit.script_ctx.dependents:
        units_to_reload.incl units_by_module[dep]

  for other in units_to_reload:
    if other != unit:
      p "resetting: ", other.script_ctx.module_name
      self.interpreter.reset_module(other.script_ctx.module_name)

  p "loading ", unit.id
  self.load_script(unit)

  for other in units_to_reload:
    if other != unit:
      other.code.touch other.code.value

  self.retry_failed_scripts()
  self.retry_failures = false
  state.reloading = false
  state.dirty_units.clear

proc script_file_for(self: Unit): string =
  if self.id == "player":
    state.config.lib_dir & "/enu/players.nim"
  elif not ?self.clone_of:
    state.config.script_dir / self.id & ".nim"
  else:
    ""

proc change_code(self: ScriptEngine, unit: Unit, code: string) =
  if ?unit.script_ctx and unit.script_ctx.running and not ?unit.clone_of:
    unit.collect_garbage

  if ?unit.shared:
    var all_edits = unit.shared.edits
    for id, edits in unit.shared.edits:
      if id != unit.id and edits.len == 0:
        all_edits.del id
    unit.shared.edits = all_edits

  unit.reset()
  state.pop_flag ConsoleVisible
  if not state.reloading and code.strip == "":
    self.interpreter.reset_module(unit.script_ctx.module_name)
    unit.script_ctx.running = false
    remove_file unit.script_ctx.script
    self.module_names.excl unit.script_ctx.module_name
    unit.script_ctx.script = ""
  elif code.strip != "":
    p "loading ", unit.id
    if not state.reloading and not self.retry_failures:
      write_file(unit.script_ctx.script, code)
      self.load_script_and_dependents(unit)
    else:
      self.load_script(unit)

proc watch_code(self: ScriptEngine, unit: Unit) =
  if unit.script_ctx.is_nil:
    unit.script_ctx = ScriptCtx(timer: MonoTime.high, interpreter: self.interpreter, timeout_at: MonoTime.high)

  unit.code.changes:
    if added or touched:
      self.change_code(unit, change.item)

proc watch_units(self: ScriptEngine, units: ZenSeq[Unit]) =
  units.changes:
    let unit = change.item
    if added:
      unit.frame_delta.changes:
        if touched:
          self.advance_unit(unit, change.item)
      unit.frame_delta.changes:
        if touched and unit.script_ctx.callback != nil:
          let task_state = unit.script_ctx.callback(change.item)
          if task_state in {Done, NextTask}:
            unit.script_ctx.callback = nil
      self.watch_code unit
      self.watch_units unit.units

      if not ?unit.clone_of:
        unit.script_ctx.script = script_file_for unit
        if file_exists(unit.script_ctx.script):
          unit.code.value = read_file(unit.script_ctx.script)
    if removed:
      self.unmap_unit(unit)
      if not ?unit.clone_of and ?unit.script_ctx:
        self.module_names.excl unit.script_ctx.module_name

proc load_player*(self: ScriptEngine) =
  state.player.value = Player.init
  state.units.add state.player.value

proc load_player*(self: ScriptController) =
  engine.load_player

proc init_interpreter[T](self: ScriptEngine, _: T)

proc worker_iter(params: (ZenContext, GameState)): iterator() =
  return iterator() =
    let (ctx, main_thread_state) = params

    Zen.thread_ctx = ZenContext.init(name = "worker")
    ctx.subscribe(Zen.thread_ctx)
    Zen.thread_ctx.subscribe(ctx)
    Zen.thread_ctx.recv
    assert Zen.thread_ctx.len == ctx.len

    worker_state = GameState.init_from(state)
    worker_state.config = Config()
    worker_state.config[] = state.config[]
    worker_state.config.font_size = Zen.thread_ctx[state.config.font_size]
    engine = ScriptEngine()
    engine.init_interpreter("")
    state = worker_state
    engine.load_player()

    engine.watch_units state.units

    while true:
      Zen.thread_ctx.recv()
      yield

#[
proc worker(params: (ZenContext, GameState)) =
  {.cast(gcsafe).}:
    let (ctx, main_thread_state) = params
    var first = true
    worker_lock.acquire
    Zen.thread_ctx = ZenContext.init(name = "worker")
    ctx.subscribe(Zen.thread_ctx)
    Zen.thread_ctx.subscribe(ctx)
    Zen.thread_ctx.recv
    assert Zen.thread_ctx.len == ctx.len
    state = GameState.init_from(main_thread_state)
    state.config = Config.init_from(main_thread_state.config)
    state.config = Config()
    state.config[] = main_thread_state.config[]
    state.config.font_size = Zen.thread_ctx[state.config.font_size]
    var engine = ScriptEngine()

    engine.init_interpreter("")
    engine.watch_units state.units
    engine.load_player()
    work_done.signal
    worker_lock.release
    while true:
      if first:
        first = false
      else:
        worker_lock.acquire
      Zen.thread_ctx.recv()
      work_done.signal
      worker_lock.release
]#

proc extract_file_info(msg: string): tuple[name: string, info: TLineInfo] =
  if msg =~ re"unhandled exception: (.*)\((\d+), (\d+)\)":
    result = (matches[0], TLineInfo(line: matches[1].parse_int.uint16, col: matches[2].parse_int.int16))

proc eval*(self: ScriptEngine, code: string) =
  let active = self.active_unit
  self.active_unit = state.open_sign.value.owner
  defer:
    self.active_unit = active

  self.active_unit.script_ctx.timeout_at = get_mono_time() + script_timeout
  discard self.active_unit.script_ctx.eval(code)

proc init*(T: type ScriptController): ScriptController =
  result = ScriptController()
  var my_ctx = Zen.thread_ctx
  work_i = worker_iter((Zen.thread_ctx, state))
  work_i()

  state = main_state
  worker_ctx = Zen.thread_ctx
  Zen.thread_ctx = my_ctx

proc init_interpreter[T](self: ScriptEngine, _: T) =
  private_access ScriptCtx

  var interpreter = Interpreter.init(state.config.script_dir, state.config.lib_dir)
  let controller = self

  self.interpreter = interpreter
  interpreter.config.spell_suggest_max = 0

  interpreter.register_error_hook proc(config, info, msg, severity: auto) {.gcsafe.} =
    var info = info
    var msg = msg
    let ctx = controller.active_unit.script_ctx
    if severity == Severity.Error and config.error_counter >= config.error_max:
      var file_name = if info.file_index.int >= 0:
        config.m.file_infos[info.file_index.int].full_path.string
      else:
        "???"

      var loc = &"{file_name}({int info.line},{int info.col})"
      p "error: ", msg, " from ", ctx.file_name
      ctx.errors.add (msg, info, loc)
      ctx.exit_code = error_code
      raise (ref VMQuit)(info: info, msg: msg, location: loc)

  interpreter.register_enter_hook proc(c, pc, tos, instr: auto) =
    assert ?controller
    assert ?controller.active_unit
    assert ?controller.active_unit.script_ctx

    let ctx = controller.active_unit.script_ctx
    let info = c.debug[pc]
    let now = get_mono_time()
    if ctx.timeout_at < now:
      let duration = script_timeout
      raise (ref VMQuit)(info: info, kind: Timeout,
        msg: &"Timeout. Script {ctx.script} executed for too long without yielding: {duration}")

    if ctx.previous_line != info:
      let config = interpreter.config
      if info.file_index.int >= 0 and info.file_index.int < config.m.file_infos.len:
        let file_name = config.m.file_infos[info.file_index.int].full_path.string
        if file_name == ctx.file_name:
          if ctx.line_changed != nil:
            ctx.line_changed(info, ctx.previous_line)
          (ctx.previous_line, ctx.current_line) = (ctx.current_line, info)

    ctx.ctx = c
    ctx.pc = pc
    ctx.tos = tos
    if ctx.pause_requested:
      ctx.pause_requested = false
      raise new_exception(VMPause, "vm paused")

  # binding.nim is expecting a var called `result`. Fix this.
  var result = controller

  result.bind_procs "base_bridge",
    register_active, echo_console, new_instance, exec_instance,  hit, exit,
    global, `global=`, position, local_position, rotation, `rotation=`, id,
    glow, `glow=`, speed, `speed=`, scale, `scale=`, velocity, `velocity=`,
    active_unit, color, `color=`, seen, start_position, wake, frame_count,
    write_stack_trace, show, `show=`, frame_created, lock, `lock=`, reset,
    press_action

  result.bind_procs "base_bridge_private",
    link_dependency_impl, action_running, `action_running=`, yield_script,
    begin_turn, begin_move, sleep_impl, `position=impl`, new_markdown_sign_impl

  result.bind_procs "bots",
    play, all_bots

  result.bind_procs "builds",
    drawing, `drawing=`, initial_position, save, restore, all_builds

  result.bind_procs "signs",
    markdown, `markdown=`, title, `title=`, height, `height=`, width, `width=`,
    size, `size=`, open, `open=`

  result.bind_procs "players",
    playing, `playing=`, god, `god=`, flying, `flying=`, tool, `tool=`,
    coding, `coding=`

when is_main_module:
  proc main =
    state.config.lib_dir = current_source_path().parent_dir / ".." / ".." / "vmlib"
    var b = Bot.init
    let c = ScriptController.init
    state.units.add b
    b.code.value = dedent """
      forward 1
    """
  main()
