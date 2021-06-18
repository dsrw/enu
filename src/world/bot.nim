import godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial,
                   input_event, animation_player, resource_loader, packed_scene]
import godot, std / [math, tables, with, times, sugar, os, monotimes]
import globals, core
import engine/contexts
export contexts

include "default_robot.nim.nimf"

var max_bot_index = 0
gdobj NimBot of KinematicBody:
  var
    script_ctx*: ScriptCtx
    material* {.gdExport.}, highlight_material* {.gdExport.},
      selected_material* {.gdExport.}: Material
    script_index* {.gdExport.} = 0
    disabled* {.gdExport.} = false
    orig_rotation: Vector3
    orig_translation: Vector3
    skin: Spatial
    mesh: MeshInstance
    animation_player: AnimationPlayer

  proc init*() =
    self.script_ctx = ScriptCtx.init("bot")
    self.speed = 1.0

  proc code_template(file: string, imports: string): string =
    result = default_robot(config.script_dir & "/" & file, imports)

  proc update_material*(value: Material) =
    self.mesh.set_surface_material(0, value)

  proc highlight*() =
    self.update_material(self.highlight_material)

  proc set_default_material*() =
    self.update_material(self.material)

  proc deselect*() =
    self.set_default_material()

  proc select*() =
    show_editor self.script_ctx.script, self.script_ctx.engine

  proc destroy*() =
    self.get_parent.remove_child(self)

  proc on_load_vars() =
    let e = self.script_ctx.engine
    self.speed = e.get_float("speed", e.module_name)

  proc on_begin_move(direction: Vector3, steps: float): Callback =
    var duration = 0.0
    let
      moving = direction.rotated(UP, self.rotation.y)
      finish = self.translation + moving * steps
      finish_time = 1.0 / self.speed * steps

    when not defined(enu_simulate):
      result = proc(delta: float): bool =
        duration += delta
        if duration >= finish_time:
          self.translation = finish
          return false
        else:
          discard self.move_and_slide(moving * self.speed, UP)
          return true
      current_ctx().start_advance_timer()
    else:
      self.translation = finish

  proc on_begin_turn(axis: Vector3, degrees: float): Callback =
    assert axis in [LEFT, RIGHT]
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
      current_ctx().start_advance_timer()
    else:
      self.transform = final_transform

  proc setup*() =
    self.script_index = max_bot_index
    inc max_bot_index
    self.name = "Bot_" & $self.script_index
    self.set_script()
    write_file self.script_ctx.script, ""

  method ready*() =
    self.bind_signals("game_ready")
    if max_bot_index <= self.script_index:
      max_bot_index = self.script_index + 1
    self.set_script()
    with self:
      skin = self.get_node("Mannequiny").as(Spatial)
      mesh = self.skin.get_node("root/Skeleton/body001").as(MeshInstance)
      animation_player = self.skin.get_node("AnimationPlayer").as(AnimationPlayer)
      orig_rotation = self.rotation
      orig_translation = self.translation
      set_default_material()

  method on_game_ready() =
    if not self.disabled:
      self.bind_signals(w"reload pause reload_all")
      self.load_script()

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
    with self:
      translation = self.orig_translation
      rotation = self.orig_rotation
    self.load_script()

  proc on_script_loaded*(e: Engine) =
    e.expose "play", proc(a: VmArgs): bool =
      let animation_name = get_string(a, 0)
      if animation_name == "":
        self.animation_player.stop(true)
      else:
        self.animation_player.play(animation_name)
      return false

  method on_reload*() =
    if not editing() or open_file == self.script:
      self.paused = false
      self.reload()

  method on_reload_all*() =
    self.reload()

  method on_pause*() =
    self.paused = not self.paused
