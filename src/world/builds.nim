include "default_builder.nim.nimf"
import states, engine/contexts

proc init*(self: typedesc[VoxelObject]) =
  self.set_script()

proc on_clone(target: Node, ctx: ScriptCtx): Builder =
  discard
  # TODO
  # let owner = target.get_parent.as(Spatial)
  # var t = owner.global_transform.origin
  # var diff = vec3()
  # let builder = owner.as(Builder)
  # if not builder.is_nil:
  #   t = builder.position.origin.snapped(vec3(1, 1, 1))
  #   diff = t - self.global_transform.origin
  # result = create_builder(t, target, self.script_ctx.script, is_clone = true).as(Builder)
  # result.saved_holes = self.saved_holes.map_it(it + diff)
  #
  # result.saved_blocks = self.saved_blocks.map_it(it + diff)
  # result.saved_block_colors = self.saved_block_colors
  # result.restore_blocks()



proc update_running_state(running: bool) =
  self.engine.running = running
  if not running:
    self.holes = self.kept_holes
    self.kept_holes.clear()
    self.save_blocks()
    self.load_vars()
    debug(self.script & " done.")

proc includes_any_location*(locations: seq[Vector3]): bool =
  let holes = to_seq(self.holes.keys)
  for loc in locations:
    let loc = loc - self.translation
    if self.terrain.get_vox(loc) or loc in holes:
      return true

proc set_defaults(self: Unit) =
  with self:
    # TODO
    # position = init_transform()
    # translation = self.original_translation
    speed = 1.0
    index = 1
    drawing = true
    move_mode = false

proc on_load_vars(self: Unit) =
  var old_speed = self.speed
  let
    e = self.engine
    scale_factor = self.engine.get_float("scale", e.module_name).round(3)
  template set(prop, getter) =
    self.prop = self.engine.getter(prop.ast_to_str, e.module_name)

  set move_mode, get_bool
  set speed, get_float
  set index, get_int
  set drawing, get_bool

  self.blocks_per_frame = if self.speed == 0:
    float.high
  else:
    self.speed

  if self.speed != old_speed:
    self.blocks_remaining_this_frame = 0
  if scale_factor != self.scale.x.round(3):
    self.scale = vec3(scale_factor, scale_factor, scale_factor)

  self.set_vars()

proc set_vars() =
  let module_name = self.engine.module_name
  self.engine.call_proc("set_vars", module_name = module_name, self.index, self.drawing,
                        self.speed, self.scale.x, self.move_mode)

proc on_begin_move(direction: Vector3, steps: float): Callback =
  if self.move_mode:
    let steps = steps.float
    var duration = 0.0
    let
      moving = self.transform.basis.xform(direction)
      finish = self.translation + moving * steps
      finish_time = 1.0 / self.speed * steps

    result = proc(delta: float): bool =
      duration += delta
      if duration >= finish_time:
        self.translation = finish
        return false
      else:
        self.translation = self.translation + (moving * self.speed * delta)
        return true
  else:
    var count = 0
    result = proc(delta: float): bool =
      var remaining = self.blocks_remaining_this_frame
      var per_frame = self.blocks_per_frame
      while count.float < steps and self.blocks_remaining_this_frame >= 1:
        remaining = self.blocks_remaining_this_frame
        per_frame = self.blocks_per_frame
        self.position = self.position.translated(direction)
        inc count
        self.blocks_remaining_this_frame -= 1
        self.drop_block()
      result = count.float < steps
  active_ctx().start_advance_timer()

method on_deleted*(clear = true) =
  self.destroy_children()
  if clear:
    self.clear()
  let duration = if self.engine.running: 0.5.seconds else: 0.5.seconds
  self.set_timer duration, proc() =
    self.paused = false
    self.script_ctx.destroy()
    self.destroy()

proc on_begin_turn(axis = UP, degrees: float): Callback =
  let map = {LEFT: UP, RIGHT: DOWN, UP: RIGHT, DOWN: LEFT}.to_table
  let axis = map[axis]
  if self.move_mode:
    var duration = 0.0
    let axis = self.transform.basis.xform(axis)
    var final_transform = self.transform
    final_transform.basis = final_transform.basis.rotated(axis, deg_to_rad(degrees))
                                                 .orthonormalized()
    result = proc(delta: float): bool =
      duration += delta
      self.rotate(axis, deg_to_rad(degrees * delta * self.speed))
      if duration <= 1.0 / self.speed:
        true
      else:
        self.transform = final_transform
        false
    active_ctx().start_advance_timer()
  else:
    let axis = self.position.basis.xform(axis)
    self.position.basis = self.position.basis.rotated(axis, deg_to_rad(degrees))
    self.position = self.position.orthonormalized()

proc on_sleep(seconds: float) =
  self.blocks_per_frame = 0.0
  self.blocks_remaining_this_frame = 0.0

proc save(name: string): bool =
  self.load_vars()
  self.save_points[name] = (self.position, self.index, self.drawing)
  false

proc restore(name: string): bool =
  (self.position, self.index, self.drawing) = self.save_points[name]
  if self.engine.initialized: self.set_vars()
  false

proc on_script_loaded(e: Engine) =
  self.blocks_remaining_this_frame = 0
  e.expose "set_energy", proc(a: VmArgs): bool =
    let
      color = get_int(a, 0).int
      energy = get_float(a, 1)
    self.terrain.set_energy(color, energy)
    false
  e.expose("save", a => self.save(get_string(a, 0)))
  e.expose("restore", a => self.restore(get_string(a, 0)))
  e.expose "reset", proc(a: VmArgs): bool =
    self.reset(get_bool(a, 0))
    false
  e.expose "pause", proc(a: VmArgs): bool =
    self.paused = true
    true
  e.expose "load_defaults", proc(a: VmArgs): bool =
    self.set_vars()
    false
  e.expose "get_position", proc(a: VmArgs): bool =
    let v = self.position.origin
    a.set_result(v.to_node)
    false
  e.expose "get_rotation", proc(a: VmArgs): bool =
    proc nm(f: float): float =
      if f.is_equal_approx(0):
        return 0
      elif f < 0:
        return f + (2 * PI)
      else:
        return f

    proc nm(v: Vector3): Vector3 =
      vec3(v.x.nm, v.y.nm, v.z.nm)

    let e = self.position.basis.get_euler

    let n = e.nm
    let v = vec3(nm(n.x).rad_to_deg, nm(n.y).rad_to_deg, nm(n.z).rad_to_deg)
    let m = if v.z > 0: 1.0 else: -1.0
    let v2 = vec3(0.0, (v.x - v.y) * m, 0.0)
    a.set_result(v2.to_node)
    return false

proc clear() =
  self.terrain.clear()

proc reset(clear = true, set_vars = true) =
  self.set_defaults()
  if set_vars and self.engine.initialized:
    try:
      self.set_vars()
    except VMError:
      discard
  if clear:
    self.clear()
    let p = self.position.origin
    self.scale = vec3(1, 1, 1)
    self.draw(p.x, p.y, p.z, self.initial_index)

proc drop_block() =
  if self.drawing:
    var p = self.position.origin.snapped(vec3(1, 1, 1))
    self.draw(p.x, p.y, p.z, self.index)

proc build() =
  let p = self.position.origin
  let index = if action_index > 0: action_index else: 1
  self.draw(p.x, p.y, p.z, index)
  self.load_script()
