import ../../godotapi / [spatial, grid_map]
import godot
import std / [tables, math, sets, sugar, sequtils, hashes, os, monotimes]
import ".." / [core, globals, world/terrain, world/grid]
import ../engine / [engine, script_helpers]
import ../api / [directions]

include "default_builder.nim.nimf"

var max_grid_index = 0

type
  Timer = tuple[until: DateTime, callback: proc()]

gdobj Builder of Spatial:
  var
    draw_mode* {.gdExport.}: DrawMode
    script_index* {.gdExport.} = 0
    enu_script*: string
    initial_index* {.gdExport.} = 1
    # FIXME `saved_blocks` and `saved_block_colors` should be
    # a single `seq[(Vector, int)]`. Will need `to_variant`
    # and `from_variant` procs.
    saved_blocks* {.gdExport.}: seq[Vector3]
    saved_block_colors {.gdExport.}: seq[int]
    saved_holes* {.gdExport}: seq[Vector3]
    original_translation* {.gdExport.}: Vector3
    paused* = false
    engine: Engine
    callback: proc(delta: float): bool
    saved_callback: proc(delta: float): bool
    index: int = 1
    blocks_per_frame = 0.0
    blocks_remaining_this_frame = 0.0
    speed = 0.0
    position = init_transform()
    drawing = true
    save_points: Table[string, tuple[position: Transform, index: int, drawing: bool]]
    grid: Grid
    terrain: Terrain
    holes, kept_holes: Table[Vector3, int]
    overwrite = false
    built = false
    move_mode = false
    scale_factor = 1.0
    running = false
    # If we delete a voxel while it's queued up to be drawn by godot voxel,
    # the voxel gets drawn anyway, and the polys hang around until they
    # move out of draw distance. Wait a bit before clearing. FIXME.
    timers: seq[Timer]
    advance_timer = MonoTime.high

  method ready() =
    trace:
      if max_grid_index <= self.script_index:
        max_grid_index = self.script_index + 1
      self.set_script()
      self.translation = self.original_translation
      self.grid = self.get_node("Grid") as Grid
      self.terrain = game_node.find_node("Terrain") as Terrain
      assert self.grid != nil
      assert self.terrain != nil

      self.bind_signals self.terrain,
        w"block_selected last_block_deleted terrain_block_added terrain_block_removed"
      self.bind_signals self.grid, w"selected deleted grid_block_added grid_block_removed"
      self.bind_signals w"reload pause reload_all"

      if self.saved_blocks.len > 0 or self.saved_holes.len > 0:
        self.restore_blocks()

  proc set_script() =
    self.enu_script = join_path(config.script_dir, &"grid_{self.script_index}.nim")

  proc setup*(translation: Vector3) =
    self.translation = translation
    self.original_translation = translation
    self.script_index = max_grid_index
    inc max_grid_index
    self.name = "Builder_" & $self.script_index
    self.set_script()
    write_file self.enu_script, ""

  proc is_script_loadable(): bool =
    if self.enu_script != "none" and file_exists(self.enu_script):
      result = read_file(self.enu_script).strip != ""

  proc save_blocks*() =
    let data = if self.draw_mode == VoxelMode:
      self.terrain.export_data(self.script_index, vec3())
    else:
      self.grid.export_data()
    self.saved_blocks = @[]
    self.saved_block_colors = @[]
    for vox in data:
      if vox.data.keep:
        self.saved_blocks.add vox.location
        self.saved_block_colors.add vox.data.index

    self.saved_holes = @[]
    for loc in self.holes.keys:
      self.saved_holes.add loc

  proc restore_blocks*() =
    for loc in self.saved_holes:
      self.holes[loc] = -1
    for (loc, index) in zip(self.saved_blocks, self.saved_block_colors):
      self.draw(loc.x, loc.y, loc.z, index, true, false)

  proc draw*(x, y, z: float, index: int, keep = false, trigger = true) =
    let loc = vec3(x, y, z)
    if not keep and loc in self.holes and
       not self.overwrite and index != self.holes[loc]:
      self.kept_holes[loc] = self.holes[loc]
    else:
      if self.draw_mode == VoxelMode:
        self.terrain.draw(x, y, z, index, self.script_index, keep, trigger)
      else:
        self.grid.draw(x, y, z, index, keep, trigger)

  proc update_running_state(running: bool) =
    self.running = running
    if not self.running:
      self.holes = self.kept_holes
      self.kept_holes.clear()
      self.save_blocks()
      self.load_vars()
      debug(self.enu_script & " done.")

  proc includes_any_location*(locations: seq[Vector3]): bool =
    if self.draw_mode == GridMode:
      for l in self.grid.get_used_cells():
        let loc = l.asVector3() + self.translation
        if loc in locations:
          return true
    for loc in self.holes.keys:
      var loc = loc
      if self.draw_mode == GridMode:
        loc += self.translation
      if loc in locations:
        return true
    return false

  proc set_defaults() =
    self.position = init_transform()
    self.translation = self.original_translation
    self.rotation = vec3()
    if self.draw_mode == VoxelMode:
      self.position.origin = self.translation

    self.speed = 30.0
    self.scale_factor = 1.0
    self.grid.scale = vec3(1, 1, 1)
    self.index = 1
    self.drawing = true
    self.overwrite = false
    self.move_mode = false

  proc switch_mode(mode: DrawMode, move_mode: bool, scale_factor: float) =
    var mode = mode
    if move_mode:
      mode = GridMode
    if scale_factor != 1.0:
      mode = GridMode
    self.move_mode = move_mode
    if mode != self.draw_mode:
      debug &"switching to {mode} mode"
      let offset = self.script_index
      var holes: Table[Vector3, int]
      if self.draw_mode == VoxelMode:
        let data = self.terrain.export_data(offset, self.translation)
        self.set_timer 0.5.seconds, proc() =
          self.terrain.clear(offset, all = true)
        self.position.origin -= self.translation
        for loc, index in self.holes:
          holes[loc - self.translation] = index
        self.holes = holes
        self.grid.import_data(data)
      else:
        let data = self.grid.export_data()
        self.grid.clear(all = true)
        self.position.origin += self.translation
        for loc, index in self.holes:
          holes[loc + self.translation] = index
        self.holes = holes
        self.terrain.import_data(data, offset, self.translation)
      self.draw_mode = mode
      self.save_blocks()

  proc load_vars() =
    var old_speed = self.speed
    let
      e = self.engine
      mode = DrawMode self.engine.get_int("mode", e.module_name)
      move_mode = self.engine.get_bool("move_mode", e.module_name)
      scale_factor = self.engine.get_float("scale", e.module_name)
    self.speed = self.engine.get_float("speed", e.module_name)
    self.index = self.engine.get_int("color", e.module_name)
    self.drawing = self.engine.get_bool("drawing", e.module_name)
    self.overwrite = self.engine.get_bool("overwrite", e.module_name)
    self.blocks_per_frame = if self.speed == 0:
      float.high
    else:
      self.speed / 30.0
    if self.speed != old_speed:
      self.blocks_remaining_this_frame = 0
    if scale_factor != self.scale_factor:
      self.grid.scale = vec3(scale_factor, scale_factor, scale_factor)
      self.scale_factor = scale_factor

    self.switch_mode(mode, move_mode, self.scale_factor)
    self.set_vars()

  method physics_process(delta: float64) =
    trace:
      if self.timers.len > 0:
        var timers = self.timers
        self.timers = @[]
        for timer in timers:
          if timer.until < now():
            timer.callback()
          else:
            self.timers.add timer
        return

      if not self.built:
        self.build()
        self.built = true
      if not self.paused:
        self.blocks_remaining_this_frame += self.blocks_per_frame
        try:
          if self.move_mode:
            if self.running:
              self.advance(delta)
          else:
            if self.blocks_per_frame > 0:
              while self.running and self.blocks_remaining_this_frame >= 1:
                self.advance(delta)
            else:
              if self.running:
                self.advance(delta)

        except VMQuit as e:
          self.error(e)

  proc set_vars() =
    let module_name = self.engine.module_name
    self.engine.call_proc("set_vars", module_name = module_name, self.index, self.drawing,
                          self.speed, self.scale_factor, int self.draw_mode,
                          self.overwrite, self.move_mode)

  proc move(direction: Vector3, steps: float): bool =
    self.load_vars()
    if self.move_mode:
      let steps = steps.float
      var duration = 0.0
      let
        moving = self.transform.basis.xform(direction)
        finish = self.translation + moving * steps
        finish_time = 1.0 / self.speed * steps

      self.callback = proc(delta: float): bool =
        duration += delta
        if duration >= finish_time:
          self.translation = finish
          return false
        else:
          self.translation = self.translation + (moving * self.speed * delta)
          return true
      self.start_advance_timer()
      return true
    else:
      var count = 0
      self.callback = proc(delta: float): bool =
        while count.float < steps and self.blocks_remaining_this_frame >= 1:
          self.position = self.position.translated(direction)
          inc count
          self.blocks_remaining_this_frame -= 1
          self.drop_block()
        return count.float < steps
      self.start_advance_timer()
      return true

  proc turn(degrees: float, axis = Up): bool =
    self.load_vars()
    if self.move_mode:
      var duration = 0.0
      let axis = self.transform.basis.xform(axis)
      var final_transform = self.transform
      final_transform.basis = final_transform.basis.rotated(axis, deg_to_rad(degrees))
                                                   .orthonormalized()
      self.callback = proc(delta: float): bool =
        duration += delta
        self.rotate(axis, deg_to_rad(degrees * delta * self.speed))
        if duration <= 1.0 / self.speed:
          true
        else:
          self.transform = final_transform
          false
      self.start_advance_timer()
      return true
    else:
      let axis = self.position.basis.xform(axis)
      self.position.basis = self.position.basis.rotated(axis, deg_to_rad(degrees))
      self.position = self.position.orthonormalized()
      return false

  proc sleep(seconds: float): bool =
    var duration = 0.0
    self.blocks_per_frame = 0.0
    self.blocks_remaining_this_frame = 0.0
    self.callback = proc(delta: float): bool =
      duration += delta
      return duration < seconds
    self.start_advance_timer()
    true

  proc save(name: string): bool =
    self.load_vars()
    self.save_points[name] = (self.position, self.index, self.drawing)
    false

  proc restore(name: string): bool =
    (self.position, self.index, self.drawing) = self.save_points[name]
    if self.engine.initialized: self.set_vars()
    false

  proc forward(steps: float): bool = self.move(Forward, steps)
  proc back(steps: float): bool = self.move(Back, steps)
  proc up(steps: float): bool = self.move(Up, steps)
  proc down(steps: float): bool = self.move(Down, steps)
  proc left(steps: float): bool = self.move(Left, steps)
  proc right(steps: float): bool = self.move(Right, steps)
  proc turn_left(degrees: float): bool = self.turn(degrees, Up)
  proc turn_right(degrees: float): bool = self.turn(degrees, Down)
  proc turn_up(degrees: float): bool = self.turn(degrees, Right)
  proc turn_down(degrees: float): bool = self.turn(degrees, Left)

  proc error(e: ref VMQuit) =
    self.running = false
    err e.msg
    trigger("script_error")

  proc clear() =
    if self.draw_mode == VoxelMode:
      self.terrain.clear(self.script_index)
    else:
      self.grid.clear()

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
    if self.draw_mode == VoxelMode:
      self.position.origin = self.translation

    let p = self.position.origin
    self.draw(p.x, p.y, p.z, action_index)
    self.load_script()

  proc load_script() =
    self.callback = nil
    self.blocks_remaining_this_frame = 0
    try:
      if self.engine.is_nil: self.engine = Engine()
      if not self.is_script_loadable:
        return
      if not (self.paused or self.engine.initialized):
        let code = default_builder(self.enu_script.extract_filename)
        with self.engine:
          load(config.script_dir, self.enu_script.split_file.name, code, config.lib_dir)
          expose "yield_script", proc(a: VmArgs):bool =
            self.callback = self.saved_callback
            self.saved_callback = nil
            true
          expose("up_impl", a => self.up(get_float(a, 0)))
          expose("down_impl", a => self.down(get_float(a, 0)))
          expose("left_impl", a => self.left(get_float(a, 0)))
          expose("right_impl", a => self.right(get_float(a, 0)))
          expose("forward_impl", a => self.forward(get_float(a, 0)))
          expose("back_impl", a => self.back(get_float(a, 0)))
          expose("turn_left_impl", a => self.turn_left(get_float(a, 0)))
          expose("turn_right_impl", a => self.turn_right(get_float(a, 0)))
          expose("turn_up_impl", a => self.turn_up(get_float(a, 0)))
          expose("turn_down_impl", a => self.turn_down(get_float(a, 0)))
          expose("echo_console", a => echo_console(get_string(a, 0)))
          expose("sleep_impl", a => self.sleep(get_float(a, 0)))
          expose("save", a => self.save(get_string(a, 0)))
          expose("restore", a => self.restore(get_string(a, 0)))
          expose "set_energy", proc(a: VmArgs): bool =
            let
              color = get_int(a, 0).int
              energy = get_float(a, 1)
            if self.draw_mode == GridMode:
              self.grid.set_energy(color, energy)
            else:
              self.terrain.set_energy(color, energy, self.script_index)
            false
          expose "reset", proc(a: VmArgs): bool =
            self.reset(get_bool(a, 0))
            false
          expose "pause", proc(a: VmArgs): bool =
            self.paused = true
            true
          expose "load_defaults", proc(a: VmArgs): bool =
            self.set_vars()
            false
      if not self.paused:
        self.update_running_state self.engine.run()
    except VMQuit as e:
      self.error(e)

  method on_block_selected(offset: int) =
    if offset == self.script_index:
      show_editor self.enu_script, self.engine

  method on_selected() =
    show_editor self.enu_script, self.engine

  proc set_timer(duration: TimeInterval, callback: proc()) =
    self.timers.add (now() + duration, callback)

  method reload() =
    let duration = if self.running: 0.5.seconds else: 0.seconds
    self.set_timer duration, proc() =
      self.reset(clear = true, set_vars = false)
      self.paused = false
      self.load_script()

  method on_reload() =
    if not editing() or open_file == self.enu_script:
      self.reload()

  method on_reload_all() =
    self.reload()

  method on_pause*() =
    self.paused = not self.paused

  method on_deleted() =
    self.get_parent.remove_child(self)
    save_scene()

  method on_last_block_deleted(offset: int) =
    if offset == self.script_index:
      self.on_deleted()

  method on_grid_block_added(loc: Vector3, index: int) =
    if loc in self.holes:
      self.holes[loc] = index
    self.save_blocks()
    save_scene()

  method on_grid_block_removed(loc: Vector3, index: int, keep: bool) =
    if not keep:
      self.holes[loc] = -1
    self.save_blocks()
    save_scene()

  method on_terrain_block_added(offset: int, loc: Vector3, index: int) =
    if offset == self.script_index:
      self.on_grid_block_added(loc, index)

  method on_terrain_block_removed(offset: int, loc: Vector3, index: int, keep: bool) =
    if offset == self.script_index:
      self.on_grid_block_removed(loc, index, keep)
