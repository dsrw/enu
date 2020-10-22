import ../godotapi / [spatial, grid_map],
       godot, tables, math, sets, sugar, sequtils, hashes, os,
       core, globals, engine, terrain, grid

var max_grid_index = 0

gdobj Builder of Spatial:
  var
    draw_mode* {.gdExport.}: DrawMode
    script_index* {.gdExport.} = 0
    enu_script* {.gdExport.} = "none"
    initial_index* {.gdExport} = 1
    saved_blocks* {.gdExport}: Dictionary
    saved_holes* {.gdExport}: Dictionary
    paused* = false
    schedule_save* = false
    engine: Engine
    callback: proc(delta: float): bool
    is_running = false
    index: int = 1
    blocks_per_frame = 0.0
    blocks_remaining_this_frame = 0.0
    speed = 0.0
    position = init_transform()
    drawing = true
    save_points: Table[string, tuple[position: Transform, index: int]]
    grid: Grid
    terrain: Terrain
    holes, kept_holes: Table[Vector3, int]
    overwrite = false
    built = false
    move_mode = false
    original_translation: Vector3
    scale_factor = 1.0

  method ready() =
    trace:
      if max_grid_index < self.script_index:
        max_grid_index = self.script_index
      self.grid = self.get_node("Grid") as Grid
      self.terrain = game_node.find_node("Terrain") as Terrain
      assert self.grid != nil
      assert self.terrain != nil

      self.bind_signals self.terrain,
        w"block_selected last_block_deleted terrain_block_added terrain_block_removed"
      self.bind_signals self.grid, w"selected deleted grid_block_added grid_block_removed"
      self.bind_signals w"reload pause reload_all"
      self.original_translation = self.translation
  proc setup*() =
    self.script_index = max_grid_index
    inc max_grid_index
    self.enu_script = &"scripts/grid_{self.script_index}.nim"
    self.name = "Builder_" & $self.script_index
    if not file_exists(self.enu_script):
      copy_file "scripts/default_grid.nim", self.enu_script

  proc save_blocks*() =
    discard

  proc draw*(x, y, z: float, index: int, keep = false) =
    let loc = vec3(x, y, z)
    if not keep and loc in self.holes and
       not self.overwrite and index != self.holes[loc]:
      self.kept_holes[loc] = self.holes[loc]
    else:
      if self.draw_mode == VoxelMode:
        self.terrain.draw(x, y, z, index, self.script_index, keep)
      else:
        self.grid.draw(x, y, z, index, keep)

  proc `running=`*(val: bool) =
    self.is_running = val
    if not val:
      self.holes = self.kept_holes
      self.kept_holes.clear()
      self.load_vars()
      debug(self.enu_script & " done.")

  proc running*: bool = self.is_running

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
    self.index = 1
    self.drawing = true
    self.overwrite = false
    self.move_mode = false

  proc switch_mode(mode: DrawMode, move_mode: bool) =
    var mode = mode
    if move_mode:
      mode = GridMode
    self.move_mode = move_mode
    if mode != self.draw_mode:
      debug &"switching to {mode} mode"
      let offset = self.script_index
      var holes: Table[Vector3, int]
      if self.draw_mode == VoxelMode:
        let data = self.terrain.export_data(offset, self.translation)
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

  proc load_vars() =
    var old_speed = self.speed
    let
      mode = DrawMode self.engine.get_int("mode", "grid")
      move_mode = self.engine.get_bool("move_mode", "grid")
      scale_factor = self.engine.get_float("scale", "grid")
    self.speed = self.engine.get_float("speed", "grid")
    self.index = self.engine.get_int("color", "grid")
    self.drawing = self.engine.get_bool("drawing", "grid")
    self.overwrite = self.engine.get_bool("overwrite", "grid")
    self.blocks_per_frame = if self.speed == 0:
      float.high
    else:
      self.speed.float / 30.0
    if self.speed != old_speed:
      self.blocks_remaining_this_frame = 0
    if scale_factor != self.scale_factor:
      self.grid.scale = vec3(scale_factor, scale_factor, scale_factor)
      self.scale_factor = scale_factor

    self.switch_mode(mode, move_mode)

  method physics_process(delta: float64) =
    trace:
      if not self.built:
        self.build()
        self.built = true
      if not self.paused:
        self.blocks_remaining_this_frame += self.blocks_per_frame
        try:
          if self.move_mode:
            if self.running and (self.callback == nil or not self.callback(delta)):
              self.running = self.engine.resume()
          else:
            if self.blocks_per_frame > 0:
              while self.running and self.blocks_remaining_this_frame >= 1:
                if self.callback == nil or not self.callback(delta):
                  self.running = self.engine.resume()
            else:
              if self.running and (self.callback == nil or not self.callback(delta)):
                  self.running = self.engine.resume()

        except VMQuit as e:
          self.error(e)

      if self.schedule_save:
        self.schedule_save = false
        save_scene()

  proc set_vars() =
    self.engine.call_proc("set_vars", module_name = "grid", self.index, self.drawing,
                          self.speed, self.scale_factor, int self.draw_mode,
                          self.overwrite, self.move_mode)

  proc move(direction: Vector3, steps: float): bool =
    self.load_vars()
    if self.move_mode:
      var duration = 0.0
      let
        moving = direction.rotated(UP, self.rotation.y)
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
      return true
    else:
      var count = 0
      self.callback = proc(delta: float): bool =
        while count.float < steps and self.blocks_remaining_this_frame >= 1:
          self.position = self.position.translated(direction)
          self.position.origin = self.position.origin.snapped(vec3(0.25, 0.25, 0.25))
          inc count
          self.blocks_remaining_this_frame -= 1
          self.drop_block()
        return count.float < steps
      return true

  proc turn(degrees: float, axis = UP): bool =
    self.load_vars()
    if self.move_mode:
      var duration = 0.0
      # TODO: Why can't this be a one liner?
      var final_transform = self.transform
      final_transform.basis.rotate(axis, deg_to_rad(degrees))
      self.callback = proc(delta: float): bool =
        duration += delta
        self.rotate(axis, deg_to_rad(degrees * delta * self.speed))
        if duration <= 1.0 / self.speed:
          true
        else:
          self.transform = final_transform
          false
      return true
    else:
      let origin = self.position.origin
      self.position.origin = vec3()
      self.position = self.position.rotated(axis, deg_to_rad(degrees))
      self.position.origin = origin
      return false

  proc sleep(seconds: float): bool =
    var duration = 0.0
    self.blocks_per_frame = 0.0
    self.blocks_remaining_this_frame = 0.0
    self.callback = proc(delta: float): bool =
      duration += delta
      return duration < seconds
    true

  proc save(name: string): bool =
    self.load_vars()
    self.save_points[name] = (
      position: self.position,
      index: self.index
    )
    false

  proc restore(name: string): bool =
    (self.position, self.index) = self.save_points[name]
    self.set_vars()
    false

  proc forward(steps: float): bool = self.move(FORWARD, steps)
  proc back(steps: float): bool = self.move(BACK, steps)
  proc up(steps: float): bool = self.move(UP, steps)
  proc down(steps: float): bool = self.move(DOWN, steps)
  proc left(steps: float): bool = self.move(LEFT, steps)
  proc right(steps: float): bool = self.move(RIGHT, steps)
  proc turn_left(degrees: float): bool = self.turn(degrees, UP)
  proc turn_right(degrees: float): bool = self.turn(-degrees, UP)
  proc turn_up(degrees: float): bool = self.turn(-degrees, RIGHT)
  proc turn_down(degrees: float): bool = self.turn(degrees, RIGHT)

  proc error(e: ref VMQuit) =
    self.running = false
    errors[self.enu_script] = @[(e.msg, e.info)]
    err e.msg
    trigger("script_error")

  proc clear() =
    if self.draw_mode == VoxelMode:
      self.terrain.clear(self.script_index)
    else:
      self.grid.clear()

  proc reset(clear = true) =
    self.set_defaults()
    if self.engine.initialized: self.set_vars()
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
    if self.enu_script == "none":
      # can't use empty string because it gets set as nil, which is no longer valid nim.
      # can probably be fixed in godot-nim
      return
    debug &"Loading {self.enu_script}. Paused {self.paused}"
    errors[self.enu_script] = @[]
    self.callback = nil
    self.blocks_remaining_this_frame = 0
    try:
      if self.engine.is_nil: self.engine = Engine()
      if not (self.paused or self.engine.initialized):
        with self.engine:
          load(self.enu_script)
          expose("grid", "up", a => self.up(get_float(a, 0)))
          expose("grid", "down", a => self.down(get_float(a, 0)))
          expose("grid", "left", a => self.left(get_float(a, 0)))
          expose("grid", "right", a => self.right(get_float(a, 0)))
          expose("grid", "forward", a => self.forward(get_float(a, 0)))
          expose("grid", "back", a => self.back(get_float(a, 0)))
          expose("grid", "turn_left", a => self.turn_left(get_float(a, 0)))
          expose("grid", "turn_right", a => self.turn_right(get_float(a, 0)))
          expose("grid", "turn_up", a => self.turn_up(get_float(a, 0)))
          expose("grid", "turn_down", a => self.turn_down(get_float(a, 0)))
          expose("grid", "echo", a => echo_console(get_string(a, 0)))
          expose("grid", "sleep", a => self.sleep(get_float(a, 0)))
          expose("grid", "save", a => self.save(get_string(a, 0)))
          expose("grid", "restore", a => self.restore(get_string(a, 0)))
          expose "grid", "set_energy", proc(a: VmArgs): bool =
            let
              color = get_int(a, 0).int
              energy = get_float(a, 1)
            if self.draw_mode == GridMode:
              self.grid.set_energy(color, energy)
            else:
              self.terrain.set_energy(color, energy, self.script_index)
            false
          expose "grid", "reset", proc(a: VmArgs): bool =
            self.reset(get_bool(a, 0))
            false
          expose "grid", "pause", proc(a: VmArgs): bool =
            self.paused = true
            true
          expose "grid", "load_defaults", proc(a: VmArgs): bool =
            self.set_vars()
            false
      if not self.paused:
        self.running = self.engine.run()
    except VMQuit as e:
      self.error(e)

  method on_block_selected(offset: int) =
    if offset == self.script_index:
      show_editor self.enu_script, self.engine

  method on_selected() =
    show_editor self.enu_script, self.engine

  method reload() =
    self.reset()
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

  method on_grid_block_removed(loc: Vector3, index: int, keep: bool) =
    if not keep:
      self.holes[loc] = -1

  method on_terrain_block_added(offset: int, loc: Vector3, index: int) =
    if offset == self.script_index:
      self.on_grid_block_added(loc, index)

  method on_terrain_block_removed(offset: int, loc: Vector3, index: int, keep: bool) =
    if offset == self.script_index:
      self.on_grid_block_removed(loc, index, keep)
