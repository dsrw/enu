import ../godotapi / [mesh_instance, node, spatial, resource_loader, packed_scene],
       godot,
       core, globals, builder, pen

gdobj Ground of MeshInstance:
  var
    point, normal: Vector3
    data: Node

  method ready*() =
    self.data = self.get_parent.get_parent.get_node("data")
    self.bind_signals(self, "target_move", "target_fire")

  proc find_nearyby_pen(point: Vector3): Option[Pen] =
    for pen in pens:
      for x in -2..2:
        for z in -2..2:
          let v = [int x.float + point.x, 0,
                   int z.float + point.z, 0, 0]
          if v in pen.voxes.blocks:
            return some(pen)

  proc create_builder(point: Vector3) =
    let
      ps = load("res://components/Builder.tscn") as PackedScene
      b = ps.instance() as Builder
    assert not b.is_nil
    b.translation = point
    b.name = "Builder" & $max_grid_index
    b.schedule_save = true
    self.data.add_child(b)
    b.owner = self.data

  method on_target_fire() =
    let
      p = self.point - vec3(0.5, 0, 0.5)
      nearby_pen = self.find_nearyby_pen(p)

    if nearby_pen:
      nearby_pen.get.draw(p, action_index - 1, save = SaveUser)
    else:
      self.create_builder(p)

  method on_target_move(point, normal: Vector3) =
    self.point = point
    self.normal = normal
    if fire_down and tool_mode == BlockMode:
      self.on_target_fire()
