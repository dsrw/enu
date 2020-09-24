import godot, ../godotapi / [kinematic_body, spatial, input, input_event,
                             input_event_mouse_motion, ray_cast, scene_tree,
                             input_event_pan_gesture, viewport, camera],
       math,
       core, globals, game, aim_target

let
  angle_x_min = -PI / 2.25
  angle_x_max = PI / 2.25
  max_speed = 50.0
  move_speed = 500.0
  gravity = -80.0
  jump_impulse = 25.0
  fly_toggle = 0.3.seconds
  sensitivity_gamepad = vec2(2.5, 2.5)
  sensitivity_mouse = vec2(0.1, -0.1)
  nil_time = none(DateTime)

gdobj Player of KinematicBody:
  var
    position_start: Vector3
    input_relative = vec2()
    camera_rig: Spatial
    camera: Camera
    aim_ray: RayCast
    world_ray: RayCast
    aim_target*: AimTarget
    flying = false
    velocity = vec3()
    jump_time: Option[DateTime]
    pan_delta = 0.0
    index = 0

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
    vec3(get_action_strength("move_right") - get_action_strength("move_left"),
         get_action_strength("jump") - get_action_strength("crouch"),
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
    self.camera = self.camera_rig.get_node("Camera") as Camera
    self.aim_ray  = self.camera_rig.get_node("Camera/AimRay") as RayCast
    self.world_ray = game_node.get_node("WorldRay") as RayCast
    self.aim_target = self.camera_rig.get_node("AimTarget") as AimTarget
    self.position_start = self.camera_rig.translation

  proc current_raycast*: RayCast =
    if get_game().mouse_captured:
      self.aim_ray
    else:
      self.world_ray

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
      if not get_game().mouse_captured:
        let
          mouse_pos = self.get_viewport()
                          .get_mouse_position() / float get_game()
                          .shrink
          cast_from = self.camera.project_ray_origin(mouse_pos)
          cast_to = self.aim_ray.translation + self.camera.project_ray_normal(mouse_pos) * 100
        self.world_ray.cast_to = cast_to
        self.world_ray.translation = cast_from
        self.aim_target.update(self.world_ray)
      else:
        self.aim_ray.cast_to = vec3(0, 0, -100)
        self.aim_target.update(self.aim_ray)

  method physics_process*(delta: float) =
    if not editing():
      let
        input_direction = self.get_input_direction()
        b = self.camera_rig.global_transform.basis
        forward = b.z * input_direction.z
        right = b.x * input_direction.x
        up = UP * input_direction.y

      var
        move_direction = forward + right + up

      if move_direction.length() > 1.0:
        move_direction = move_direction.normalized()

      if not self.flying:
        move_direction.y = 0

      self.velocity = self.calculate_velocity(self.velocity, move_direction, delta, self.flying)

      if self.flying:
        discard self.move_and_collide(self.velocity * delta)
      else:
        self.velocity = self.move_and_slide(self.velocity, UP)

  proc next_block() = discard
  proc prev_block() = discard

  method unhandled_input*(event: InputEvent) =
    if event of InputEventMouseMotion and get_game().mouse_captured:
      if not skip_next_mouse_move:
        let shrink = get_game().shrink.float
        self.input_relative += event.as(InputEventMouseMotion).relative() * shrink
      else:
        echo "skipped mouse move"
        skip_next_mouse_move = false
    if event.is_action_pressed("jump"):
      let
        time = now()
        toggle = self.jump_time and time < self.jump_time.get + fly_toggle

      if toggle:
        self.jump_time = nil_time
        self.flying = not self.flying
      elif self.is_on_floor():
        self.velocity += vec3(0, jump_impulse, 0)
        self.jump_time = time
      else:
        self.jump_time = time

    if event of InputEventPanGesture and tool_mode == BlockMode:
      let pan = event as InputEventPanGesture
      self.pan_delta += pan.delta.y
      if self.pan_delta > 1:
        get_game().next_action()
      elif self.pan_delta < -1:
        get_game().prev_action()

    if event.is_action_pressed("next"):
      get_game().next_action()

    if event.is_action_pressed("previous"):
      get_game().prev_action()

    let ray = self.current_raycast
    if event.is_action_pressed("fire"):
      fire_down = true
      if ray.is_colliding():
        trigger(ray.get_collider(), "target_fire")
    elif fire_down and event.is_action_released("fire"):
      fire_down = false

    if event.is_action_pressed("remove"):
      remove_down = true
      if ray.is_colliding():
        trigger(ray.get_collider(), "target_remove")
    elif remove_down and event.is_action_released("remove"):
      remove_down = false

proc get_player*(): Player = state.player as Player
