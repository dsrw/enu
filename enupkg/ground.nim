import ../godotapi / [mesh_instance],
       godot,
       globals, level_grid

const signals = ["target_move", "target_fire", "target_remove"]

gdobj Ground of MeshInstance:
  var
    point, normal: Vector3

  method ready*() =
    bind_signals(self, self, signals)

  # TODO: do something different here
  method on_target_move(point, normal: Vector3) =
    let grid = get_level_grid()
    if not grid.is_nil:
      grid.trigger("target_move", point, normal)

  method on_target_fire() =
    let grid = get_level_grid()
    if not grid.is_nil:
      grid.trigger("target_fire")

  method on_target_remove() =
    let grid = get_level_grid()
    if not grid.is_nil:
      grid.trigger("target_remove")

