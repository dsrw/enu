import ../godotapi/[grid_map, mesh_library, mesh, spatial],
       godot,
       core, globals, pen, builder

gdobj Grid of GridMap:
  var
    highlight_material* {.gdExport}: Material
    original_materials: seq[Material]
    pen: Pen
    point, normal: Vector3

  proc build_unique_mesh_library() =
    self.mesh_library = self.mesh_library.duplicate().as(MeshLibrary)
    for index in self.mesh_library.get_item_list():
      let mesh = self.mesh_library.get_item_mesh(index).duplicate().as(Mesh)
      self.mesh_library.set_item_mesh(index, mesh)
      self.original_materials.add(mesh.surface_get_material(0))

  method ready*() =
    let signals = ["target_in", "target_out", "target_move", "target_fire",
                   "target_remove"]
    self.bind_signals(self, signals)
    self.build_unique_mesh_library()

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
    self.pen.builder.trigger("selected")
    self.deselect()

  method on_target_in() =
    if tool_mode == CodeMode:
      self.highlight()

  method on_target_out() =
    if tool_mode == CodeMode:
      self.deselect()

  method on_target_move(point, normal: Vector3) =
    (self.point, self.normal) = (point, normal)

  method on_target_fire() =
    if tool_mode == BlockMode:
      self.pen.draw(self.point + (self.normal * 0.5), action_index + 1)
    else:
      self.select()

  method on_target_remove() =
    self.pen.draw(self.point - (self.normal * 0.5), -1)

type
  GridPen* = ref object of Pen
    grid: Grid

method clear*(self: GridPen): bool =
  self.grid.clear()
  true

proc init*(typ:typedesc[GridPen], builder: Node, id: string): GridPen =
  let grid = builder.get_node("Grid") as Grid
  assert grid != nil
  result = GridPen(grid: grid, builder: builder, id: id)
  grid.pen = result

method draw*(self: GridPen, location: Vector3, index: int, save = false) =
  let
    grid = self.grid
    map_point = grid.world_to_map(location)
  grid.set_cell_item(int(map_point.x), int(map_point.y), int(map_point.z), index)
