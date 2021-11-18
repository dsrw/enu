import godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial,
                   input_event, animation_player, resource_loader, packed_scene]
import godot, std / [math, tables, with, times, sugar, os, monotimes]
import globals, core
import engine / [contexts, engine], player/states
export contexts

include "default_robot.nim.nimf"
proc create_bot*(transform: Transform, parent: Node, script = "", is_clone = false, up_axis = UP): Node {.discardable.}

var max_bot_index = 0
gdobj GDBot of KinematicBody:
  var
    material* {.gdExport.}, highlight_material* {.gdExport.},
      selected_material* {.gdExport.}: Material
    script_index* {.gdExport.} = 0
    skin: Spatial
    mesh: MeshInstance
    animation_player: AnimationPlayer
    unit*: Unit

  proc init*() =
    self.bind_signals(self, "deleted")
    self.unit.script_ctx = ScriptCtx.init("bot")
    self.unit.speed = 1.0

  method on_deleted*() =
    self.unit.script_ctx.destroy()
    self.destroy()

  proc code_template(file: string, imports: string): string =
    result = default_robot(state.config.script_dir & "/" & file, imports, self.unit.script_ctx.is_clone)

  proc update_material*(value: Material) =
    self.mesh.set_surface_material(0, value)

  proc highlight*() =
    self.update_material(self.highlight_material)

  proc set_default_material*() =
    self.update_material(self.material)

  proc deselect*() =
    self.set_default_material()

  proc select*() =
    if not self.unit.script_ctx.is_clone:
      state.open_file = self.unit.script_ctx.script
      state.open_engine = self.unit.script_ctx.engine
      state.editing = true

  proc on_load_vars() =
    let e = self.unit.script_ctx.engine
    self.speed = e.get_float("speed", e.module_name)

  proc on_begin_move(direction: Vector3, steps: float): Callback =
    var duration = 0.0
    let
      axis = UP
      sum = axis.x + axis.y + axis.z
      moving = direction.rotated(axis, self.rotation.y)
      finish_time = 1.0 / self.speed * steps

    when not defined(enu_simulate):
      var velocity = gravity * UP
      result = proc(delta: float): bool =
        duration += delta
        if duration >= finish_time:
          self.translation = self.translation.snapped(vec3(0.1, 0.1, 0.1))
          return false
        else:
          let inverse = vec3(sum, sum, sum) - axis
          var v = moving * self.speed
          v = (v * inverse) + (axis * (velocity + (vec3(1, 1, 1) * gravity / 3 * delta)))
          velocity = self.move_and_slide(v, axis)
          return true
      active_ctx().start_advance_timer()
    else:
      self.translation = self.translation + moving * steps

  proc on_begin_turn(axis: Vector3, degrees: float): Callback =
    let degrees = degrees * -axis.x
    var duration = 0.0
    # TODO: Why can't this be a one liner?
    var final_transform = self.transform
    final_transform.basis.rotate(UP, deg_to_rad(degrees))
    when not defined(enu_simulate):
      result = proc(delta: float): bool =
        duration += delta
        self.rotate(UP, deg_to_rad(degrees * delta * self.speed))
        if duration <= 1.0 / self.speed:
          true
        else:
          self.transform = final_transform
          false
      active_ctx().start_advance_timer()
    else:
      self.transform = final_transform

  proc setup*(set_script = true) =
    self.script_index = max_bot_index
    self.unit.starting_position = v3(self.transform.origin)
    inc max_bot_index
    self.name = "Bot_" & $self.script_index
    if not self.unit.script_ctx.is_clone:
      self.set_script()
      write_file self.unit.script_ctx.script, ""

  method ready*() =
    if max_bot_index <= self.script_index:
      max_bot_index = self.script_index + 1
    if not self.unit.script_ctx.is_clone:
      self.set_script()

    self.skin = self.get_node("Mannequiny").as(Spatial)
    var node = self.skin.get_node("root/Skeleton/body001")
    var n = node.is_nil
    self.mesh = node.as(MeshInstance)
    self.animation_player = self.skin.get_node("AnimationPlayer").as(AnimationPlayer)
    self.set_default_material()
    if game_ready:
      self.on_game_ready()
    else:
      self.bind_signals("game_ready")
      self.transform = Transform()
      self.translation = vec3 self.unit.starting_position

  method on_game_ready() =
    if not self.unit.disabled:
      self.bind_signals(w"reload pause reload_all")
      self.load_script()

  proc on_clone(target: Node, active_ctx: ScriptCtx): NimBot =
    let parent = target.get_parent.as(Spatial)

    create_bot(parent.global_transform, target, self.unit.script_ctx.script, is_clone = true).as(NimBot)

  proc update_running_state(running: bool) =
    self.engine.running = running

  method physics_process*(delta: float64) =
    if not self.paused:
      try:
        if self.engine.running:
          self.advance(delta)
      except VMQuit as e:
        self.engine.error(e)

  method reload() =
    self.animation_player.stop(true)
    let children = self.get_node("OwnedNodes").get_children
    for v in children:
      let child = v.as_object(Node)
      child.trigger("deleted")
    self.transform = Transform()
    self.translation = vec3 self.unit.starting_position
    if not self.unit.script_ctx.is_clone:
      self.load_script()

  proc on_script_loaded*(e: Engine) =
    e.expose "play", proc(a: VmArgs): bool =
      let animation_name = get_string(a, 0)
      if animation_name == "":
        self.animation_player.stop(true)
      else:
        self.animation_player.play(animation_name)
      return false
    e.expose "get_position", proc(a: VmArgs): bool =
      let n = self.global_transform.origin.to_node
      a.set_result(n)
      return false
    e.expose "get_rotation", proc(a: VmArgs): bool =
      a.set_result(self.rotation_degrees.to_node)
      return false

  method on_reload*() =
    if state.open_file == self.script:
      self.paused = false
      self.reload()

  method on_reload_all*() =
    self.reload()

  method on_pause*() =
    self.paused = not self.paused

proc create_bot*(transform: Transform, parent: Node, script = "", is_clone = false, up_axis = UP): Node {.discardable.} =
  let
    proto = load("res://components/Bot.tscn") as PackedScene
    b = proto.instance() as NimBot
    is_clone = parent != data_node
  assert not b.is_nil
  b.unit.script_ctx.is_clone = is_clone
  b.transform = transform
  b.paused = true
  b.setup()
  if is_clone:
    b.unit.script_ctx.script = script
  parent.add_child(b)
  b.owner = parent
  save_scene()
  result = b
