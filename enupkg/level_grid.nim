import ../godotapi / [grid_map, mesh, mesh_library],
       godot,
       math, sugar, tables, std/with, tables,
       globals, engine

const signals = ["target_in", "target_out", "target_move", "target_fire", "target_remove"]

var active*: Node

gdobj LevelGrid of GridMap:
  var
    speed = 0.0
    point, normal: Vector3
    index: int = 0
    blocks_per_frame = 0.0
    blocks_this_frame = 0.0
    highlight_material* {.gdExport.}: Material
    original_materials: seq[Material]
    callback: proc(delta: float): bool
    engine: Engine
    paused = false
    running = false
    enu_script* {.gdExport.} = "scripts/grid_1.nim"
    direction = FORWARD
    position = vec3()
    drawing = true
    save_points: Table[string, tuple[position: Vector3, direction: Vector3, index: int]]

  proc place_block*(point, normal: Vector3, index: int64 = 0) =
    let map_point = self.world_to_map(point + (normal * 0.5))
    self.set_cell_item(int(map_point.x), int(map_point.y), int(map_point.z), index)

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

  proc set_vars() =
    self.engine.call_proc("set_vars", module_name = "grid", self.index, self.drawing, self.speed)

  proc build_unique_mesh_library() =
    self.mesh_library = self.mesh_library.duplicate().as(MeshLibrary)
    for index in self.mesh_library.get_item_list():
      let mesh = self.mesh_library.get_item_mesh(index).duplicate().as(Mesh)
      self.mesh_library.set_item_mesh(index, mesh)
      self.original_materials.add(mesh.surface_get_material(0))

  proc reset(clear = true) =
    if clear:
      self.clear()
      self.set_cell_item(0, 0, 0, 0)
    self.direction = FORWARD
    self.position = vec3()

  proc drop_block() =
    if self.drawing:
      self.set_cell_item(
        self.position.x.to_int,
        self.position.y.to_int,
        self.position.z.to_int,
        self.index
      )

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

  proc load_script() =
    debug &"Loading {self.enu_script}"
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

  method ready*() =
    with self:
      bind_signals(self, signals)
      bind_signals("reload", "pause", "reload_all")
      build_unique_mesh_library()
      reset()
      load_script()
    active = self

  proc highlight() =
    let lib = self.mesh_library
    for index in lib.get_item_list():
      let mesh = lib.get_item_mesh(index)
      mesh.surface_set_material(0, self.highlight_material)

  proc deselect() =
    let lib = self.mesh_library
    for index in lib.get_item_list():
      let mesh = lib.get_item_mesh(index)
      mesh.surface_set_material(0, self.original_materials[index])

  proc select*() =
    show_editor self.enu_script, self.engine
    self.deselect()

  proc next*() =
    inc self.index
    let lib = self.mesh_library
    if self.index == lib.get_item_list().len(): self.index = 0
    debug("Mesh: " & lib.get_item_name(self.index))

  proc previous*() =
    dec self.index
    let lib = self.mesh_library
    if self.index < 0: self.index = lib.get_item_list().len() - 1
    debug("Mesh: " & lib.get_item_name(self.index))

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

  method on_target_in() =
    active = self
    if tool_mode == CodeMode:
      self.highlight()

  method on_target_out() =
    if tool_mode == CodeMode:
      self.deselect()

  method on_target_move(point, normal: Vector3) =
    (self.point, self.normal) = (point, normal)

  method on_target_fire() =
    if tool_mode == BlockMode:
      self.place_block(self.point, self.normal, self.index)
    else:
      self.select()

  method on_target_remove() =
    self.place_block(self.point, -self.normal, -1)

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

proc get_level_grid*(): LevelGrid = active as LevelGrid
