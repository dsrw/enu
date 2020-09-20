import ../godotapi / [spatial],
       godot, tables, math, sets, sugar, sequtils, hashes,
       core, globals, engine, pen

gdobj Builder of Spatial:
  var
    engine: Engine
    draw_mode* {.gdExport.}: DrawMode
    enu_script* {.gdExport.} = "scripts/grid_1.nim"
    callback: proc(delta: float): bool
    paused = false
    is_running = false
    index: int = 1
    blocks_per_frame = 0.0
    blocks_this_frame = 0.0
    speed = 0.0
    direction = FORWARD
    position = vec3()
    drawing = true
    save_points: Table[string, tuple[position: Vector3, direction: Vector3, index: int]]
    voxes: VoxSet
    pen: Pen
    grid: Node

  proc `running=`*(val: bool) =
    self.is_running = val
    if not val:
      debug(self.enu_script & " done.")

  proc running*: bool = self.is_running

  method ready*() =
    self.voxes = VoxSet()
    self.grid = self.get_node("Grid")
    assert self.grid != nil
    self.bind_signals self, "selected"
    self.bind_signals "game_ready", "reload", "pause", "reload_all"
    self.pen = self.draw_mode.init(self, self.enu_script, self.voxes)

  proc set_defaults() =
    self.direction = FORWARD
    self.position = vec3()
    self.speed = 30.0
    self.index = 0
    self.drawing = true

  proc load_vars() =
    var old_speed = self.speed
    self.speed = self.engine.get_float("speed", "grid")
    self.index = self.engine.get_int("index", "grid")
    self.drawing = self.engine.get_bool("drawing", "grid")

    self.blocks_per_frame = if self.speed == 0:
      float.high
    else:
      self.speed.float / 30.0
    if self.speed != old_speed:
      self.blocks_this_frame = 0

  method physics_process*(delta: float64) =
    if not self.paused:
      self.blocks_this_frame += self.blocks_per_frame
      try:
        if self.blocks_per_frame > 0:
          while self.running and self.blocks_this_frame >= 1:
            if self.callback == nil or not self.callback(delta):
              self.running = self.engine.resume()
        else:
          if self.running and (self.callback == nil or not self.callback(delta)):
              self.running = self.engine.resume()

      except VMQuit as e:
        self.error(e)

  proc set_vars() =
    self.engine.call_proc("set_vars", module_name = "grid", self.index, self.drawing, self.speed)

  proc move(direction: Vector3, steps: BiggestInt): bool =
    self.load_vars()
    var count = 0
    self.callback = proc(delta: float): bool =
      while count < steps and self.blocks_this_frame >= 1:
        self.position += direction
        inc count
        self.blocks_this_frame -= 1
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
    self.blocks_this_frame = 0.0
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
    if not self.pen.clear():
      for v in self.voxes.blocks:
        self.pen.draw(v.vec3, -1, save = false)
    self.voxes.blocks.clear()

  proc reset(clear = true) =
    self.set_defaults()
    self.set_vars()
    if clear:
      self.clear()
      self.pen.draw(self.position, 1, save = true)

  proc drop_block() =
    if self.drawing:
      self.pen.draw(self.position, self.index, save = true)

  method on_game_ready*() =
    if self.draw_mode == VoxelMode and self.voxes.blocks.len > 0:
      self.paused = true
    self.pen.draw(self.position, 1, save = true)
    self.load_script()

  proc load_script() =
    debug &"Loading {self.enu_script}. Paused {self.paused}"
    errors[self.enu_script] = @[]
    self.callback = nil
    self.blocks_this_frame = 0
    try:
      if self.engine.is_nil:
        self.engine = Engine()
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
      self.running = self.engine.run()
    except VMQuit as e:
      self.error(e)

  proc highlight() =
    discard
    # let lib = self.mesh_library
    # for index in lib.get_item_list():
    #   let mesh = lib.get_item_mesh(index)
    #   mesh.surface_set_material(0, self.highlight_material)

  proc deselect() =
    discard
    # let lib = self.mesh_library
    # for index in lib.get_item_list():
    #   let mesh = lib.get_item_mesh(index)
    #   mesh.surface_set_material(0, self.original_materials[index])

  method on_selected() =
    show_editor self.enu_script, self.engine

  method reload() =
    self.reset()
    self.paused = false
    self.load_script()

  method on_reload*() =
    if not editing() or open_file == self.enu_script:
      self.reload()

  method on_reload_all*() =
    self.reload()

  method on_pause*() =
    self.paused = not self.paused
