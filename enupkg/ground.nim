import ../godotapi / [mesh_instance],
       godot,
       globals

#const signals = ["target_move", "target_fire", "target_remove"]

gdobj Ground of MeshInstance:
  var
    point, normal: Vector3

  #method ready*() =
  #  bind_signals(self, self, signals)

  # TODO: do something different here
  # method on_target_move(point, normal: Vector3) =
  #   let t = get_terrain()
  #   if not t.is_nil:
  #     t.trigger("target_move", point, normal)

  # method on_target_fire() =
  #   let t = get_terrain()
  #   if not t.is_nil:
  #     t.trigger("target_fire")

  # method on_target_remove() =
  #   let t = get_terrain()
  #   if not t.is_nil:
  #     t.trigger("target_remove")

