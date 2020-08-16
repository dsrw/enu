import godot, ../godotapi / [kinematic_body, spatial, input, input_event, input_event_mouse_motion, ray_cast, scene_tree],
       math,
       globals, game, aim_target, level_grid
const
  angle_x_min = -PI / 2.25
  angle_x_max = PI / 2.25
  max_speed = 50.0
  move_speed = 500.0
  gravity = -80.0
  jump_impulse = 25

let
  sensitivity_gamepad = vec2(2.5, 2.5)
  sensitivity_mouse = vec2(0.1, -0.1)

gdobj Player of KinematicBody:
  var
    position_start: Vector3
    input_relative = vec2()
    camera_rig: Spatial
    aim_ray: RayCast
    aim_target*: AimTarget
    flying = false
    velocity = vec3()

  proc get_look_direction(): Vector2 =
    vec2(get_action_strength("look_right") - get_action_strength("look_left"),
         get_action_strength("look_up") - get_action_strength("look_down")
        ).normalized()

  proc update_rotation(offset: Vector2) =
    var r = self.camera_rig.rotation
    r.y -= offset.x
    r.x += offset.y
    r.x = clamp(r.x, angle_x_min, angle_x_max)
    r.z = 0
    self.camera_rig.rotation = r

  proc get_input_direction(): Vector3 =
    vec3(get_action_strength("move_right") - get_action_strength("move_left"), 0,
         get_action_strength("move_back") - get_action_strength("move_front"))

  proc calculate_velocity(velocity_current: Vector3,
                          move_direction: Vector3,
                          delta: float,
                          flying: bool): Vector3 =
    result = move_direction * delta * move_speed
    if result.length() > max_speed:
      result = result.normalized() * max_speed
    if not self.flying:
      result.y = velocity_current.y + gravity * delta

  method ready*() =
    state.player = self
    self.camera_rig = self.get_node("CameraRig") as Spatial
    self.aim_ray  = self.camera_rig.get_node("Camera/AimRay") as RayCast
    self.aim_target = self.camera_rig.get_node("AimTarget") as AimTarget
    self.position_start = self.camera_rig.translation

  method process*(delta: float) {.gdExport.} =
    if not editing():
      var transform = self.camera_rig.global_transform
      transform.origin = self.global_transform.origin + self.position_start

      var look_direction = self.get_look_direction()

      if self.input_relative.length() > 0:
        self.update_rotation(self.input_relative * sensitivity_mouse * delta)
        self.input_relative = vec2()
      elif look_direction.length() > 0:
        self.update_rotation(look_direction * sensitivity_gamepad * delta)

      var r = self.camera_rig.rotation
      r.y = wrap(r.y, -PI, PI)
      self.camera_rig.rotation = r
      self.aim_target.update(self.aim_ray)

  method physics_process*(delta: float) =
    if not editing():
      let
        input_direction = self.get_input_direction()
        b = self.camera_rig.global_transform.basis
        forward = b.z * input_direction.z
        right = b.x * input_direction.x

      var
        move_direction = forward + right

      if move_direction.length() > 1.0:
        move_direction = move_direction.normalized()

      if not self.flying:
        move_direction.y = 0

      self.velocity = self.calculate_velocity(self.velocity, move_direction, delta, self.flying)

      if self.flying:
        discard self.move_and_collide(self.velocity * delta)
      else:
        self.velocity = self.move_and_slide(self.velocity, UP)

  method unhandled_input*(event: InputEvent) =
    if event of InputEventMouseMotion and get_game().mouse_captured:
      self.input_relative += event.as(InputEventMouseMotion).relative() * get_game().shrink
    if event.is_action_pressed("jump"):
      if self.flying:
        self.flying = false
      elif not self.is_on_floor():
        self.flying = true
      else:
        self.velocity += vec3(0, jump_impulse, 0)

    if event.is_action_pressed("next"):
      if tool_mode == BlockMode:
        let grid = get_level_grid()
        if grid != nil:
          grid.next()

    if event.is_action_pressed("previous"):
      if tool_mode == BlockMode:
        let grid = get_level_grid()
        if grid != nil:
          grid.previous()

    if event.is_action_pressed("fire"):
      if self.aim_ray.is_colliding():
        trigger(self.aim_ray.get_collider(), "target_fire")
        #self.get_tree().set_input_as_handled()

    if event.is_action_pressed("remove"):
      if self.aim_ray.is_colliding():
        trigger(self.aim_ray.get_collider(), "target_remove")

proc get_player*(): Player = state.player as Player
