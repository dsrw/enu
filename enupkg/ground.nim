import ../godotapi / [mesh_instance, node, spatial, resource_loader, packed_scene],
       godot, sugar,
       core, globals, builder, bot

gdobj Ground of MeshInstance:
  var
    point, normal: Vector3
    data: Node
    bot_proto: PackedScene

  method ready*() =
    self.data = self.get_parent.get_parent.get_node("data")
    self.bot_proto = load("res://components/bot.tscn") as PackedScene
    self.bind_signals(self, "target_move", "target_fire")

  proc create_builder(point: Vector3) =
    let
      ps = load("res://components/Builder.tscn") as PackedScene
      b = ps.instance() as Builder
    assert not b.is_nil
    b.translation = point
    b.name = "Builder" & $max_grid_index
    b.schedule_save = true
    b.initial_index = action_index - 1
    self.data.add_child(b)
    b.owner = self.data

  proc find_builder(voxels: seq[Vector3]): Option[Builder] =
    self.data.get_children
             .map_it(it.as_object(Builder))
             .filter_it(not it.is_nil)
             .first(it => it.contains_any(voxels))

  method on_target_fire() =
    var p = self.point
    if tool_mode == BlockMode:
      p = (p - vec3(0.5, 0, 0.5)).trunc
      let voxels = collect(new_seq):
        for x in 0..2:
          for y in 0..2:
            for z in 0..2:
              p + vec3(x - 1, y - 1, z - 1)
      let builder = self.find_builder(voxels)
      if builder:
        builder.get.draw(p.x, p.y, p.z, action_index)
      else:
        self.create_builder(p)

    elif tool_mode == ObjectMode:
      let bot = self.bot_proto.instance() as NimBot
      assert not bot.is_nil
      bot.translation = p
      bot.name = "bot_" & $max_grid_index
      inc max_grid_index
      bot.schedule_save = true
      self.data.add_child(bot)
      bot.owner = self.data

  method on_target_move(point, normal: Vector3) =
    self.point = point
    self.normal = normal
    if fire_down and tool_mode == BlockMode:
      self.on_target_fire()
