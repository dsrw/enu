import ../godotapi / [spatial, grid_map],
       godot, tables, math, sets, sugar, sequtils, hashes, os,
       core, globals, engine, terrain, grid

gdobj Builder of Spatial:
  var
    draw_mode* {.gdExport.}: DrawMode
    script_index* {.gdExport.} = 0
    enu_script* {.gdExport.} = "none"
    initial_index* {.gdExport} = 1
    paused* = false
    schedule_save* = false
    engine: Engine
    callback: proc(delta: float): bool
    is_running = false
    index: int = 1
    blocks_per_frame = 0.0
    blocks_remaining_this_frame = 0.0
    speed = 0.0
    direction = FORWARD
    position = vec3()
    drawing = true
    save_points: Table[string, tuple[position: Vector3, direction: Vector3, index: int]]
    grid: Grid
    terrain: Terrain

  method ready() =
    self.grid = self.get_node("Grid") as Grid
    self.terrain = game_node.find_node("Terrain") as Terrain
    assert self.grid != nil
    assert self.terrain != nil

    self.bind_signals self.terrain, w"block_selected block_deleted"
    self.bind_signals self.grid, w"selected deleted"
    self.bind_signals w"reload pause reload_all"
    self.script_index = max_grid_index
    inc max_grid_index

    self.enu_script = &"scripts/grid_{self.script_index}.nim"
    self.build()

  proc draw*(x, y, z: float, index: int, keep = false) =
    if self.draw_mode == VoxelMode:
      self.terrain.draw(x, y, z, index, self.script_index, keep)
    else:
      self.grid.draw(x, y, z, index, keep)

  proc `running=`*(val: bool) =
    self.is_running = val
    if not val:
      self.load_vars()
      debug(self.enu_script & " done.")

  proc running*: bool = self.is_running

  proc includes_any_location*(locations: seq[Vector3]): bool =
    if self.draw_mode == GridMode:
      for l in self.grid.get_used_cells():
        let loc = l.asVector3() + self.translation
        if loc in locations:
          return true
    return false

  proc set_defaults() =
    self.direction = FORWARD
    self.position = if self.draw_mode == VoxelMode:
      self.translation
    else:
      vec3()

    self.speed = 30.0
    self.index = 1
    self.drawing = true

  proc switch_mode(mode: DrawMode) =
    if mode != self.draw_mode:
      let offset = self.script_index
      if self.draw_mode == VoxelMode:
        let data = self.terrain.export_data(offset, self.translation)
        self.terrain.clear(offset, all = true)
        self.position -= self.translation
        self.grid.import_data(data)
      else:
        let data = self.grid.export_data()
        self.grid.clear(all = true)
        self.position += self.translation
        self.terrain.import_data(data, offset, self.translation)
      self.draw_mode = mode

  proc load_vars() =
    var old_speed = self.speed
    let mode = DrawMode self.engine.get_int("mode", "grid")
    self.speed = self.engine.get_float("speed", "grid")
    self.index = self.engine.get_int("color", "grid")
    self.drawing = self.engine.get_bool("drawing", "grid")
    self.blocks_per_frame = if self.speed == 0:
      float.high
    else:
      self.speed.float / 30.0
    if self.speed != old_speed:
      self.blocks_remaining_this_frame = 0

    self.switch_mode(mode)

  method physics_process(delta: float64) =
    if not self.paused:
      self.blocks_remaining_this_frame += self.blocks_per_frame
      try:
        if self.engine.is_nil:
          # if we load paused we won't have a script engine yet
          self.load_script()
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
    self.engine.call_proc("set_vars", module_name = "grid", self.index, self.drawing, self.speed, int self.draw_mode)

  proc move(direction: Vector3, steps: BiggestInt): bool =
    self.load_vars()
    var count = 0
    self.callback = proc(delta: float): bool =
      while count < steps and self.blocks_remaining_this_frame >= 1:
        self.position += direction
        inc count
        self.blocks_remaining_this_frame -= 1
        self.drop_block()
      return count < steps
    true

  proc turn(degrees: float): bool =
    self.load_vars()
    var direction = self.direction
    direction = direction.rotated(UP, deg_to_rad(degrees))

    self.direction = vec3(direction.x.round, direction.y.round, direction.z.round)
    false

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
      direction: self.direction,
      index: self.index
    )
    false

  proc restore(name: string): bool =
    (self.position, self.direction, self.index) = self.save_points[name]
    self.set_vars()
    false

  proc forward(steps: BiggestInt): bool = self.move(self.direction, steps)
  proc back(steps: BiggestInt): bool = self.move(-self.direction, steps)
  proc up(steps: BiggestInt): bool = self.move(UP, steps)
  proc down(steps: BiggestInt): bool = self.move(DOWN, steps)
  proc left(degrees: float): bool = self.turn(degrees)
  proc right(degrees: float): bool = self.turn(-degrees)

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
      let p = self.position
      self.draw(p.x, p.y, p.z, self.initial_index)

  proc drop_block() =
    if self.drawing:
      let p = self.position
      self.draw(p.x, p.y, p.z, self.index)

  proc build() =
    if not file_exists(self.enu_script):
      os.copy_file "scripts/default_grid.nim", self.enu_script

    if self.draw_mode == VoxelMode:
      self.position = self.translation

    let p = self.position
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
          expose("grid", "up", a => self.up(get_int(a, 0)))
          expose("grid", "down", a => self.down(get_int(a, 0)))
          expose("grid", "forward", a => self.forward(get_int(a, 0)))
          expose("grid", "back", a => self.back(get_int(a, 0)))
          expose("grid", "left", a => self.left(get_float(a, 0)))
          expose("grid", "right", a => self.right(get_float(a, 0)))
          expose("grid", "print", a => print(get_string(a, 0)))
          expose("grid", "echo", a => echo_console(get_string(a, 0)))
          expose("grid", "sleep", a => self.sleep(get_float(a, 0)))
          expose("grid", "save", a => self.save(get_string(a, 0)))
          expose("grid", "restore", a => self.restore(get_string(a, 0)))
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

  method on_block_deleted(offset: int) =
    if offset == self.script_index:
      self.on_deleted()
