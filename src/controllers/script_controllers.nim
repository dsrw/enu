import std /
  [os, macros, sugar, sets, strutils, times, monotimes, sequtils, importutils,
  tables, options, math, re, hashes, random, asyncfutures]
import locks except Lock
import pkg / godot except print
import pkg / compiler / vm except get_int
import pkg / compiler / ast except new_node
import pkg / compiler / [vmdef, lineinfos, renderer, msgs]
import godotapi / [spatial, ray_cast, voxel_terrain]
import core, models /
  [states, bots, builds, units, colors, signs, players]
import libs / [interpreters, eval]
import shared / errors

from pkg / compiler / vm {.all.} import stack_trace_aux

log_scope:
  topics = "scripting"
  thread_ctx = Zen.thread_ctx

proc retry_failed_scripts*(self: Worker) {.gcsafe.}

import models / serializers

include script_controllers / host_bridge_utils

const
  advance_step* = 0.5.seconds
  error_code = some(99)
  script_timeout = 5.0.seconds

var
  worker_lock*: locks.Lock
  work_done*: locks.Cond

worker_lock.init_lock
work_done.init_cond

private_access ScriptCtx
private_access Worker

proc init*(_: type ScriptCtx, owner: Unit, clone_of: Unit = nil,
   interpreter: Interpreter): ScriptCtx =

  result = ScriptCtx(
    module_name: if ?clone_of: clone_of.id else: "",
    interpreter: interpreter,
    timeout_at: MonoTime.high,
    timer: MonoTime.high
  )

proc get_last_error(self: Worker): ErrorData =
  result = self.last_exception.from_exception
  self.last_exception = nil

proc map_unit(self: Worker, unit: Unit, pnode: PNode) =
  debug "mapping pnode ", hash = pnode.hash, unit = unit.id
  self.unit_map[pnode] = unit
  self.node_map[unit] = pnode

proc unmap_unit(self: Worker, unit: Unit) =
  if unit in self.node_map:
    debug "unmapping node ", hash = self.node_map[unit].hash, unit = unit.id
    self.unit_map.del self.node_map[unit]
    self.node_map.del unit

proc link_dependency(self: Worker, dep: Unit) =
  let dep = dep.find_root
  let active = self.active_unit.find_root
  debug "linking dependency", dependency = dep.script_ctx.module_name,
    will_reload = active.script_ctx.module_name
  dep.script_ctx.dependents.incl active.script_ctx.module_name

proc write_stack_trace(self: Worker) =
  let ctx = self.active_unit.script_ctx
  {.gcsafe.}:
    msg_writeln(ctx.ctx.config, "stack trace: (most recent call last)",
        {msg_no_unit_sep})
    stack_trace_aux(ctx.ctx, ctx.tos, ctx.pc)

proc get_unit(self: Worker, a: VmArgs, pos: int): Unit {.gcsafe.} =
  let pnode = a.get_node(pos)
  if pnode notin self.unit_map:
    raise NilAccessDefect.init("Unit is nil")
  {.gcsafe.}:
    result = self.unit_map[pnode]

proc get_bot(self: Worker, a: VmArgs, pos: int): Bot =
  let unit = self.get_unit(a, pos)
  assert not unit.is_nil and unit of Bot
  Bot(unit)

proc get_build(self: Worker, a: VmArgs, pos: int): Build =
  let unit = self.get_unit(a, pos)
  assert not unit.is_nil and unit of Build
  Build(unit)

proc get_sign(self: Worker, a: VmArgs, pos: int): Sign =
  let unit = self.get_unit(a, pos)
  assert not unit.is_nil and unit of Sign
  Sign(unit)

proc to_node(self: Worker, unit: Unit): PNode =
  if ?unit:
    if unit notin self.node_map:
      raise_assert \"unit `{unit.id}` not in node_map"
    self.node_map[unit]
  else:
    ast.new_node(nkNilLit)

# Common bindings

proc press_action(self: Worker, name: string) =
  state.queued_action = name

proc register_active(self: Worker, pnode: PNode) =
  assert not self.active_unit.is_nil
  self.map_unit(self.active_unit, pnode)

proc new_instance(self: Worker, src: Unit, dest: PNode) =
  let id = src.id & "_" & self.active_unit.id & "_instance_" &
      $(self.active_unit.units.len + 1)

  var clone = src.clone(self.active_unit, id)
  assert not clone.is_nil
  clone.script_ctx = ScriptCtx.init(owner = clone, clone_of = src,
      interpreter = self.interpreter)

  self.map_unit(clone, dest)

  debug "adding to active unit", unit = clone.id,
      active_unit = self.active_unit.id

  self.active_unit.units.add(clone)

proc exec_instance(self: Worker, unit: Unit) =
  let active = self.active_unit
  let ctx = unit.script_ctx
  self.active_unit = unit
  defer:
    self.active_unit = active
  ctx.timeout_at = get_mono_time() + script_timeout
  ctx.running = ctx.call_proc("run_script", self.node_map[unit], true).paused

proc active_unit(self: Worker): Unit = self.active_unit

proc pause_script(self: Worker) =
  self.active_unit.global_flags -= ScriptInitializing
  self.active_unit.script_ctx.pause()

proc begin_turn(self: Worker, unit: Unit, direction: Vector3, degrees: float,
    lean: bool, move_mode: int): string =

  assert not degrees.is_nan
  var degrees = floor_mod(degrees, 360)
  let ctx = self.active_unit.script_ctx
  ctx.callback = unit.on_begin_turn(direction, degrees, lean, move_mode)
  ctx.last_ran = MonoTime.default
  if not ctx.callback.is_nil:
    self.pause_script()

proc begin_move(self: Worker, unit: Unit, direction: Vector3, steps: float,
    move_mode: int) =

  var steps = steps
  var direction = direction
  let ctx = self.active_unit.script_ctx
  if steps < 0:
    steps = steps * -1
    direction = direction * -1
  ctx.callback = unit.on_begin_move(direction, steps, move_mode)
  ctx.last_ran = MonoTime.default
  if not ctx.callback.is_nil:
    self.pause_script()

proc sleep_impl(self: Worker, ctx: ScriptCtx, seconds: float) =
  var duration = 0.0
  ctx.callback = proc(delta: float, _: MonoTime): TaskStates =
    duration += delta
    if seconds > 0 and duration < seconds:
      Running
    elif seconds <= 0 and duration <= 0.5 and ctx.timer > get_mono_time():
      Running
    else:
      Done
  ctx.last_ran = MonoTime.default
  self.pause_script()

proc hit(unit_a: Unit, unit_b: Unit): Vector3 =
  for collision in unit_a.collisions:
    if collision.id == unit_b.id:
      return collision.normal.snapped(vec3(1, 1, 1))

proc echo_console(msg: string) =
  logger("info", msg & "\n")
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
  Global in self.global_flags

proc `global=`(self: Unit, global: bool) =
  if global:
    self.global_flags += Global
  else:
    self.global_flags -= Global

proc lock(self: Unit): bool =
  Lock in self.global_flags

proc `lock=`(self: Unit, value: bool) =
  if value:
    self.global_flags += Lock
  else:
    self.global_flags -= Lock

proc local_position(self: Unit): Vector3 =
  self.transform.origin

proc start_position(self: Unit): Vector3 =
  if Global in self.global_flags:
    self.start_transform.origin
  else:
    self.start_transform.origin.global_from(self.parent)

proc position_set(self: Unit, position: Vector3) =
  var position = position
  if self of Player and position.y <= 0:
    position.y = 0.1

  if Global in self.global_flags:
    self.transform_value.origin = position
  else:
    self.transform_value.origin = position.local_to(self.parent)

proc speed(self: Unit): float =
  self.speed

proc `speed=`(self: Unit, speed: float) =
  self.speed = speed

proc scale(self: Unit): float =
  self.scale

proc `scale=`(self: Unit, scale: float) =
  types.`scale=`(self, scale)

proc glow(self: Unit): float =
  self.glow

proc `glow=`(self: Unit, glow: float) =
  types.`glow=`(self, glow)

proc velocity(self: Unit): Vector3 =
  self.velocity

proc `velocity=`(self: Unit, velocity: Vector3) =
  types.`velocity=`(self, velocity)

proc color(self: Unit): Colors =
  action_index self.color_value.value

proc `color=`(self: Unit, color: Colors) =
  types.`color=`(self, action_colors[color])

proc show(self: Unit): bool =
  Visible in self.global_flags

proc `show=`(self: Unit, value: bool) =
  if value:
    self.global_flags += Visible
  else:
    self.global_flags -= Visible

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
    result = Player(self).rotation
  else:
    let e = self.transform.basis.orthonormalized.get_euler

    let n = e.nm
    let v = vec3(nm(n.x).rad_to_deg, nm(n.y).rad_to_deg, nm(n.z).rad_to_deg)
    let m = if v.z > 0: 1.0 else: -1.0
    result = (v.x - v.y) * m

proc `rotation=`(self: Unit, degrees: float) =
  var t = Transform.init
  if self of Player:
    Player(self).rotation_value.touch degrees
    t.origin = self.transform.origin
  else:
    t = Transform.init
    var s = self.scale
    t = t.rotated(UP, deg_to_rad(degrees)).scaled(vec3(s, s, s))
    t.origin = self.transform.origin
  self.transform = t

proc sees(self: Worker, unit: Unit, target: Unit, distance: float): Future[bool] =
  result = Future.init(bool, "sees")

  if target == state.player and Flying in state.local_flags:
    result.complete(false)
    return

  if unit of Build or unit of Bot:
    unit.sight_query = SightQuery(target: target, distance: distance)
  else:
    result.complete(false)
    return

  let future = result
  unit.script_ctx.callback = proc(delta: float, timeout: MonoTime): TaskStates =
    let query = unit.sight_query
    if ?query.answer:
      future.complete(query.answer.get)
      result = Done
    else:
      result = Running

  unit.script_ctx.last_ran = MonoTime.default
  self.pause_script()

proc wake(self: Unit) =
  self.script_ctx.timer = get_mono_time()

proc yield_script(self: Worker, unit: Unit) =
  let ctx = unit.script_ctx
  ctx.callback = ctx.saved_callback
  ctx.saved_callback = nil
  self.pause_script()

proc exit(self: Worker, ctx: ScriptCtx, exit_code: int) =
  ctx.exit_code = some(exit_code)
  self.pause_script()
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

proc new_markdown_sign(self: Worker,
  unit: Unit, pnode: PNode, markdown: string, title: string, width: float,
  height: float, size: int, zoomable: bool, billboard: bool): Unit =

  result = Sign.init(
    markdown, title = title, owner = self.active_unit,
    transform = drop_transform(unit), width = width, height = height,
    size = size, zoomable = zoomable, billboard = billboard)

  info "creating sign", id = result.id
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
  self.animation = animation_name

proc all_units(T: type Unit, self: Worker): PNode =
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

proc all_bots(self: Worker): PNode =
  Bot.all_units(self)

# Build bindings

proc all_builds(self: Worker): PNode =
  Build.all_units(self)

proc drawing(self: Build): bool =
  self.drawing

proc `drawing=`(self: Build, drawing: bool) =
  self.drawing = drawing

proc initial_position(self: Build): Vector3 =
  self.initial_position

proc save(self: Build, name: string) =
  self.save_points[name] =
      (self.draw_transform, self.color_value.value, self.drawing)

proc restore(self: Build, name: string) =
  (self.draw_transform, self.color_value.value, self.drawing) =
      self.save_points[name]

# Player binding

proc playing(self: Unit): bool =
  Playing in state.local_flags

proc `playing=`*(self: Unit, value: bool) =
  state.set_flag Playing, value

proc god(self: Unit): bool =
  God in state.local_flags

proc `god=`*(self: Unit, value: bool) =
  state.set_flag God, value

proc flying(self: Unit): bool =
  Flying in state.local_flags

proc `flying=`*(self: Unit, value: bool) =
  state.set_flag Flying, value

proc tool(self: Unit): int =
  int(state.tool)

proc `tool=`(self: Unit, value: int) =
  state.tool = Tools(value)

# Sign bindings
proc title(self: Sign): string =
  self.title

proc `title=`(self: Sign, value: string) =
  types.`title=`(self, value)

proc markdown(self: Sign): string =
  self.markdown

proc `markdown=`(self: Sign, value: string) =
  types.`markdown=`(self, value)

proc width(self: Sign): float =
  self.width

proc `width=`(self: Sign, value: float) =
  types.`width=`(self, value)
  self.title_value.touch self.title

proc height(self: Sign): float =
  self.height

proc `height=`(self: Sign, value: float) =
  types.`height=`(self, value)
  self.title_value.touch self.title

proc size(self: Sign): int =
  self.size

proc `size=`(self: Sign, value: int) =
  types.`size=`(self, value)
  self.title_value.touch self.title

proc open(self: Sign): bool =
  state.open_sign == self

proc `open=`(self: Sign, value: bool) =
  if value:
    state.open_sign = self
  elif not value and self.open:
    state.open_sign = nil

proc coding(self: Unit): Unit =
  state.open_unit

proc `coding=`(self: Unit, value: Unit) =
  state.open_unit = value

# End of bindings

proc script_error(self: Worker, unit: Unit, e: ref VMQuit) =
  var msg = e.msg
  if ?e.parent:
    msg = e.parent.msg
  logger("err", msg)
  unit.global_flags -= ScriptInitializing
  unit.ensure_visible
  state.push_flags ConsoleVisible

proc advance_unit(self: Worker, unit: Unit, timeout: MonoTime): bool =
  let ctx = unit.script_ctx
  if ?ctx and ctx.running:
    unit.current_line = ctx.current_line.line.int
    if unit of Build:
      let unit = Build(unit)
      unit.voxels_remaining_this_frame += unit.voxels_per_frame
    try:
      assert self.active_unit.is_nil
      var task_state = NextTask

      let now = get_mono_time()

      let delta = if ?ctx.last_ran:
        (now - ctx.last_ran).in_microseconds.float / 1000000.0
      else:
        0.0

      ctx.last_ran = now
      if ctx.callback == nil or
          (task_state = ctx.callback(delta, timeout);
          task_state in {Done, NextTask}):

        ctx.timer = MonoTime.high
        ctx.action_running = false
        self.active_unit = unit
        ctx.timeout_at = now + script_timeout
        ctx.running = ctx.resume()
        if not ctx.running and not ?unit.clone_of:
          unit.collect_garbage
          unit.ensure_visible
          unit.current_line = 0

        result = ctx.running and task_state == NextTask

      elif now >= ctx.timer:
        ctx.timer = now + advance_step
        ctx.saved_callback = ctx.callback
        ctx.callback = nil
        self.active_unit = unit
        ctx.timeout_at = now + script_timeout
        discard ctx.resume()

    except VMQuit as e:
      self.interpreter.reset_module(unit.script_ctx.module_name)
      self.script_error(unit, e)
    finally:
      self.active_unit = nil

proc load_script(self: Worker, unit: Unit, timeout = script_timeout) =
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
      info "loading script", script = ctx.script
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
    if self.retry_failures and e.kind != Timeout:
      self.failed.add (unit, e)
    else:
      self.script_error(unit, e)
  finally:
    self.active_unit = nil

proc retry_failed_scripts*(self: Worker) {.gcsafe.} =
  var prev_failed: self.failed.type = @[]
  while prev_failed.len != self.failed.len:
    prev_failed = self.failed
    self.failed = @[]
    for f in prev_failed:
      debug "retrying", script = f.unit.script_ctx.script
      self.load_script(f.unit)

  for f in prev_failed:
    self.script_error(f.unit, f.e)
  self.failed = @[]

proc load_script_and_dependents(self: Worker, unit: Unit) =
  var previous: HashSet[Unit]
  var units_by_module: Table[string, Unit]
  var units_to_reload: HashSet[Unit]

  units_to_reload.incl unit
  state.global_flags += LoadingWorld
  state.push_flag LoadingScript
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
      debug "resetting", module = other.script_ctx.module_name
      self.interpreter.reset_module(other.script_ctx.module_name)

  debug "loading unit", unit_id = unit.id
  self.load_script(unit)

  for other in units_to_reload:
    if other != unit:
      other.code_value.touch Code.init(other.code.nim)

  self.retry_failed_scripts()
  self.retry_failures = false
  state.pop_flag LoadingScript
  state.global_flags -= LoadingWorld

proc script_file_for(self: Unit): string =
  if self.id == state.player.id:
    state.config.lib_dir & "/enu/players.nim"
  elif not ?self.clone_of:
    state.config.script_dir / self.id & ".nim"
  else:
    ""

proc eval(self: Worker, unit: Unit, code: string) =
  let active = self.active_unit
  self.active_unit = unit
  defer:
    self.active_unit = active

  unit.script_ctx.timeout_at = get_mono_time() + script_timeout
  {.gcsafe.}:
    discard unit.script_ctx.eval(code)

proc change_code(self: Worker, unit: Unit, code: Code) =
  debug "code changing", unit = unit.id
  unit.errors.clear
  if ?unit.script_ctx and unit.script_ctx.running and not ?unit.clone_of:
    unit.collect_garbage

  var edits = unit.shared.edits
  for id in edits.value.keys:
    if id != unit.id and edits[id].len == 0:
      edits.del id

  unit.reset()
  state.pop_flag ConsoleVisible
  if LoadingScript notin state.local_flags and code.nim.strip == "":
    self.interpreter.reset_module(unit.script_ctx.module_name)
    debug "reset module", module = unit.script_ctx.module_name
    unit.script_ctx.running = false
    remove_file unit.script_ctx.script
    self.module_names.excl unit.script_ctx.module_name
    unit.script_ctx.script = ""
  elif code.nim.strip != "":
    debug "loading unit", unit_id = unit.id
    if LoadingScript notin state.local_flags and not self.retry_failures:
      write_file(unit.script_ctx.script, code.nim)
      if not self.interpreter.is_nil:
        self.load_script_and_dependents(unit)
      else:
        # We load the player before we init the interpreter to get to an
        # interactive state quicker. Otherwise this shouldn't ever be nil.
        assert unit.id == state.player.id
    else:
      self.load_script(unit)

proc watch_code(self: Worker, unit: Unit) =
  unit.code_value.changes:
    if added or touched:
      if change.item.owner == "" or change.item.owner == Zen.thread_ctx.id:
        self.change_code(unit, change.item)

  unit.eval_value.changes:
    if added or touched and change.item != "":
      self.eval(unit, change.item)
      unit.eval = ""

  if unit.script_ctx.is_nil:
    unit.script_ctx = ScriptCtx.init(owner = unit,
        interpreter = self.interpreter)

    unit.script_ctx.script = script_file_for unit

proc watch_units(self: Worker,
  units: ZenSeq[Unit],
  parent: Unit,
  body: proc(unit: Unit, change: Change[Unit], added: bool,
      removed: bool) {.gcsafe.}
) =

  units.track proc(changes: seq[Change[Unit]]) =
    for change in changes:
      let unit = change.item
      let added = Added in change.changes
      let removed = Removed in change.changes
      body(unit, change, added, removed)
      if added:
        if not ?unit.clone_of:
          unit.local_flags += Dirty
        # FIXME: this is being set for the main thread in node_controller
        unit.parent = parent
        unit.collisions.track proc(changes: seq[Change[(string, Vector3)]]) =
          unit.script_ctx.timer = get_mono_time()
        self.watch_units(unit.units, unit, body)

template for_all_units(self: Worker, body: untyped) {.dirty.} =
  self.watch_units state.units, parent = nil,
    proc(unit: Unit, change: Change[Unit], added: bool,
        removed: bool) {.gcsafe.} =

      body

proc init_interpreter[T](self: Worker, _: T) {.gcsafe.}

proc launch_worker(params: (ZenContext, GameState)) {.gcsafe.} =
  let (ctx, main_thread_state) = params
  worker_lock.acquire

  var listen_address = main_thread_state.config.listen_address
  let worker_ctx = ZenContext.init(id = \"work-{generate_id()}",
      chan_size = 1000, buffer = true,
      listen_address = listen_address)

  Zen.thread_ctx = worker_ctx
  ctx.subscribe(Zen.thread_ctx)

  state = GameState.init_from(main_thread_state)
  let server_address = main_thread_state.config.server_address
  if ?listen_address or not ?server_address:
    state.push_flag Server

  state.config_value = ZenValue[Config](Zen.thread_ctx["config"])
  state.console = ConsoleModel.init_from(main_thread_state.console)
  state.worker_ctx_name = worker_ctx.id
  main_thread_state.worker_ctx_name = worker_ctx.id

  state.player = Player.init
  state.player.color = state.config.player_color

  work_done.signal
  worker_lock.release

  var worker = Worker()

  worker.for_all_units:
    if added:
      worker.watch_code unit

    if removed:
      worker.unmap_unit(unit)
      if not ?unit.clone_of and ?unit.script_ctx:
        worker.module_names.excl unit.script_ctx.module_name
      if ?unit.script_ctx:
        unit.script_ctx.running = false
        unit.script_ctx.callback = nil
        if LoadingScript notin state.local_flags and not ?unit.clone_of:
          remove_file unit.script_ctx.script
          remove_dir unit.data_dir

      for zid in unit.zids:
        debug "untracking zid", zid, unit = unit.id
        Zen.thread_ctx.untrack zid
      unit.zids = @[]
      unit.destroy

  let player = state.player
  # add player before interpreter is initialized to get to an interactive
  # state quicker
  if Server in state.local_flags:
    state.units.add player
  worker.init_interpreter("")
  if Server in state.local_flags:
    var world_dir = state.config.world_dir
    player.script_ctx.interpreter = worker.interpreter
    worker.load_script_and_dependents(player)

    worker.load_world(world_dir)
    state.config_value.changes:
      if added:
        if change.item.world_dir != world_dir:
          if world_dir != "":
            save_world(world_dir)
          worker.unload_world()
          world_dir = change.item.world_dir
          if world_dir != "":
            worker.load_world(world_dir)
  else:
    Zen.thread_ctx.subscribe(server_address)
    state.units.add player
    player.script_ctx.interpreter = worker.interpreter
    worker.load_script_and_dependents(player)

  state.global_flags.changes:
    if LoadingWorld.added:
      state.open_sign = nil
      state.open_unit = nil

  const max_time = (1.0 / 30.0).seconds
  const min_time = (1.0 / 120.0).seconds
  while true:
    let frame_start = get_mono_time()
    let timeout = frame_start + max_time
    let wait_until = frame_start + min_time

    Zen.thread_ctx.recv
    inc state.frame_count
    for ctx_name in Zen.thread_ctx.unsubscribed:
      var i  = 0
      while i < state.units.len:
        if state.units[i].id == \"player-{ctx_name}":
          state.units.del i
        else:
          i += 1

    var to_process: seq[Unit]
    state.units.value.walk_tree proc(unit: Unit) = to_process.add unit
    to_process.shuffle

    while to_process.len > 0 and get_mono_time() < timeout:
      let units = to_process
      to_process = @[]
      for unit in units:
        if Ready in unit.global_flags:
          if worker.advance_unit(unit, timeout):
            to_process.add(unit)

    let frame_end = get_mono_time()
    if frame_end < wait_until:
      sleep int((wait_until - frame_end).in_milliseconds)

proc extract_file_info(msg: string): tuple[name: string, info: TLineInfo] =
  if msg =~ re"unhandled exception: (.*)\((\d+), (\d+)\)":
    result = (matches[0], TLineInfo(line: matches[1].parse_int.uint16, col:
        matches[2].parse_int.int16))

proc init*(T: type ScriptController): ScriptController =
  result = ScriptController()
  worker_lock.acquire
  result.worker_thread.create_thread(launch_worker, (Zen.thread_ctx, state))
  work_done.wait(worker_lock)
  worker_lock.release

proc init_interpreter[T](self: Worker, _: T) {.gcsafe.} =
  private_access ScriptCtx

  var interpreter = Interpreter.init(state.config.script_dir,
      state.config.lib_dir)

  let controller = self

  self.interpreter = interpreter
  interpreter.config.spell_suggest_max = 0

  interpreter.register_error_hook proc(config, info, msg,
      severity: auto) {.gcsafe.} =

    var info = info
    var msg = msg
    let ctx = controller.active_unit.script_ctx
    let errors = controller.active_unit.errors
    if severity == Severity.Error and config.error_counter >= config.error_max:
      var file_name = if info.file_index.int >= 0:
        config.m.file_infos[info.file_index.int].full_path.string
      else:
        "???"

      if file_name.get_file_info != ctx.file_name.get_file_info:
        (file_name, info) = extract_file_info msg
        msg = msg.replace(re"unhandled exception:.*\) Error\: ", "")
      else:
        msg = msg.replace(re"(?ms);.*", "")

      var loc = \"{file_name}({int info.line},{int info.col})"
      error "vm error", msg, file = ctx.file_name
      errors.add (msg, info, loc)
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
        msg: \"Timeout. Script {ctx.script} executed for too long without " &
            \"yielding: {duration}")

    if ctx.previous_line != info:
      let config = interpreter.config
      if info.file_index.int >= 0 and
          info.file_index.int < config.m.file_infos.len:

        let file_name =
            config.m.file_infos[info.file_index.int].full_path.string

        if file_name == ctx.file_name:
          (ctx.previous_line, ctx.current_line) = (ctx.current_line, info)

    ctx.ctx = c
    ctx.pc = pc
    ctx.tos = tos
    if ctx.pause_requested:
      ctx.pause_requested = false
      raise VMPause.new_exception("vm paused")

  # binding.nim is expecting a var called `result`. Fix this.
  var result = controller

  result.bridged_from_vm "vm_bridge_utils", get_last_error

  result.bridged_from_vm "base_bridge",
    register_active, echo_console, new_instance, exec_instance, hit, exit,
    global, `global=`, position, local_position, rotation, `rotation=`, id,
    glow, `glow=`, speed, `speed=`, scale, `scale=`, velocity, `velocity=`,
    active_unit, color, `color=`, sees, start_position, wake, frame_count,
    write_stack_trace, show, `show=`, frame_created, lock, `lock=`, reset,
    press_action

  result.bridged_from_vm "base_bridge_private",
    link_dependency, action_running, `action_running=`, yield_script,
    begin_turn, begin_move, sleep_impl, position_set, new_markdown_sign

  result.bridged_from_vm "bots",
    play, all_bots

  result.bridged_from_vm "builds",
    drawing, `drawing=`, initial_position, save, restore, all_builds

  result.bridged_from_vm "signs",
    markdown, `markdown=`, title, `title=`, height, `height=`, width, `width=`,
    size, `size=`, open, `open=`

  result.bridged_from_vm "players",
    playing, `playing=`, god, `god=`, flying, `flying=`, tool, `tool=`,
    coding, `coding=`

when is_main_module:
  proc main =
    state.config.lib_dir =
        current_source_path().parent_dir / .. / .. / "vmlib"

    var b = Bot.init
    let c = ScriptController.init
    state.units.add b
    b.code = Code.init """
      forward 1
    """.dedent
  main()
