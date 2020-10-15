import ../godotapi / [mesh_instance, node, spatial, resource_loader, packed_scene],
       godot, sugar,
       core, globals, builder, bot, terrain

gdobj Ground of MeshInstance:
  var
    point, normal: Vector3
    data: Node
    terrain: Terrain
    bot_proto: PackedScene

  method ready*() =
    let level = self.get_parent.get_parent
    self.data = level.get_node("data")
    self.terrain = level.get_node("Terrain") as Terrain
    assert not self.data.is_nil
    assert not self.terrain.is_nil
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
    b.paused = true
    b.initial_index = action_index
    self.data.add_child(b)
    b.owner = self.data

  method on_target_fire() =
    var p = self.point
    p = (p - vec3(0.5, 0, 0.5)).trunc
    let voxels = collect(new_seq):
      for x in 0..2:
        for y in 0..2:
          for z in 0..2:
            p + vec3(x - 1, y - 1, z - 1)

    if tool_mode == BlockMode:
      for loc in voxels:
        let vox = self.terrain.get_vox(loc)
        if vox:
          self.terrain.draw(p.x, p.y, p.z, action_index, vox.get.offset)
          return
      for c in self.data.get_children():
        let b = c.as_object(Builder)
        assert not b.is_nil
        if b.includes_any_location(voxels):
          let point = p - b.translation
          b.draw(point.x, point.y, point.z, action_index)
          return

      self.create_builder(p)

    elif tool_mode == ObjectMode:
      let bot = self.bot_proto.instance() as NimBot
      assert not bot.is_nil
      bot.translation = p
      bot.name = "bot_" & $max_grid_index
      bot.paused = true
      inc max_grid_index
      bot.schedule_save = true
      self.data.add_child(bot)
      bot.owner = self.data

  method on_target_move(point, normal: Vector3) =
    let previous_point = self.point
    self.point = point
    self.normal = normal
    if fire_down and previous_point != self.point and tool_mode == BlockMode:
      self.on_target_fire()
