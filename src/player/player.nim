import godotapi / [kinematic_body, spatial, input, input_event,
                         input_event_mouse_motion, input_event_joypad_motion,
                         ray_cast, scene_tree, input_event_pan_gesture, viewport, camera, global_constants,
                         collision_shape]
import godot except print
import math
import core, globals, game, engine/engine, engine/contexts
import aim_target

let
  angle_x_min = -PI / 2.25
  angle_x_max = PI / 2.25
  max_speed = 50.0
  move_speed = 500.0
  gravity = -240.0
  jump_impulse = 50.0
  fly_toggle = 0.3.seconds
  float_time = 0.3.seconds
  run_toggle = 0.3.seconds
  sensitivity_gamepad = vec2(2.5, 2.5)
  sensitivity_mouse = vec2(0.005, -0.005)
  nil_time = none(DateTime)
  input_command_timeout = 0.25

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
    running = false
    always_run = false
    velocity = vec3()
    jump_time: Option[DateTime]
    run_time: Option[DateTime]
    pan_delta = 0.0
    index = 0
    collision_shape: CollisionShape
    jump_down = false
    command_timer = 0.0
    skip_release = false

  proc get_look_direction(): Vector2 =
    vec2(get_action_strength("look_right") - get_action_strength("look_left"),
         get_action_strength("look_up") - get_action_strength("look_down"))

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
                          flying, running: bool): Vector3 =
    let speed = if running: move_speed * 2 else: move_speed
    result = move_direction * delta * speed
    if result.length() > max_speed:
      result = result.normalized() * max_speed
    if not flying:
      let float_time = if running:
        float_time + float_time
      else:
        float_time
      let floating = self.jump_down and self.jump_time and self.jump_time.get + float_time > now()
      var gravity = if floating:
        gravity / 4
      else:
        gravity
      result.y = velocity_current.y + gravity * delta

  method ready*() =
    state.player = self
    self.camera_rig = self.get_node("CameraRig") as Spatial
    self.collision_shape = self.get_node("CollisionShape") as CollisionShape
    self.camera = self.camera_rig.get_node("Camera") as Camera
    self.aim_ray  = self.camera_rig.get_node("Camera/AimRay") as RayCast
    self.world_ray = game_node.get_node("WorldRay") as RayCast
    self.aim_target = self.camera_rig.get_node("AimTarget") as AimTarget
    self.position_start = self.camera_rig.translation
    self.load_script()

  proc current_raycast*: RayCast =
    if get_game().mouse_captured:
      self.aim_ray
    else:
      self.world_ray

  method process*(delta: float) {.gdExport.} =
    trace:
      if not editing() or command_mode:
        var transform = self.camera_rig.global_transform
        transform.origin = self.global_transform.origin + self.position_start

        var look_direction = self.get_look_direction()

        if self.input_relative.length() > 0:
          self.update_rotation(self.input_relative * sensitivity_mouse)
          self.input_relative = vec2()
        elif look_direction.length() > 0:
          self.update_rotation(look_direction * sensitivity_gamepad * delta)

        var r = self.camera_rig.rotation
        r.y = wrap(r.y, -PI, PI)
        self.camera_rig.rotation = r
        if not get_game().mouse_captured:
          let
            mouse_pos = self.get_viewport().get_mouse_position()
            cast_from = self.camera.project_ray_origin(mouse_pos)
            cast_to = self.aim_ray.translation + self.camera.project_ray_normal(mouse_pos) * 100
          self.world_ray.cast_to = cast_to
          self.world_ray.translation = cast_from
          self.aim_target.update(self.world_ray)
        else:
          self.aim_ray.cast_to = vec3(0, 0, -100)
          self.aim_target.update(self.aim_ray)

  proc load_script() =
    let ctx = ScriptCtx(engine: Engine.init())
    ctx.script = config.lib_dir & "/enu/players.nim"
    let code = read_file ctx.script
    ctx.engine.load(config.script_dir, ctx.script, code, config.lib_dir, "")
    ctx.engine.expose "quit", proc(a: VmArgs): bool =
      engine.pause(ctx.engine)
      ctx.engine.running = false
      result = false
    ctx.engine.expose "get_position", proc(a: VmArgs): bool =
      let n = self.global_transform.origin.to_node
      a.set_result(n)
      return false
    ctx.engine.expose "get_rotation", proc(a: VmArgs): bool =
      a.set_result(self.rotation_degrees.to_node)
      return false
    discard ctx.engine.run()

  method physics_process*(delta: float) =
    trace:
      if command_mode and self.command_timer > 0:
        self.command_timer -= delta
        if self.command_timer <= 0:
          get_game().disable_command_mode()

      const forward_rotation = deg_to_rad(-90.0)
      if not editing() or command_mode:
        let
          input_direction = self.get_input_direction()
          basis   = self.camera_rig.global_transform.basis
          right   = basis.x * input_direction.x
          up      = UP * input_direction.y
          forward = (basis.x * input_direction.z).rotated(UP, forward_rotation)

        var
          move_direction = forward + right

        if move_direction.length() > 1.0:
          move_direction = move_direction.normalized()

        move_direction.y = 0
        move_direction += up

        let velocity = self.calculate_velocity(self.velocity, move_direction,
                                               delta, self.flying, self.running)
        self.velocity = self.move_and_slide(velocity, UP)
        # drop us back in the middle of the world if we fall through
        if self.translation.y < -10:
          self.translation = vec3(0, 100, 0)

  proc has_active_input(device: int): bool =
    for axis in 0..JOY_AXIS_MAX:
      if axis != JOY_ANALOG_L2 and axis != JOY_ANALOG_R2 and get_joy_axis(device, axis).abs >= 0.2:
        return true
    for button in 0..JOY_BUTTON_MAX:
      if is_joy_button_pressed(device, button):
        return true

  method unhandled_input*(event: InputEvent) =
    if event of InputEventJoypadMotion:
      let event = event as InputEventJoypadMotion
      if event.axis == JOY_ANALOG_L2 or event.axis == JOY_ANALOG_R2:
        return
    if event of InputEventMouseMotion and get_game().mouse_captured:
      if not skip_next_mouse_move:
        self.input_relative += event.as(InputEventMouseMotion).relative()
      else:
        skip_next_mouse_move = false
    if editing() and not self.skip_release and (event of InputEventJoypadButton or event of InputEventJoypadMotion):
      let active_input = self.has_active_input(event.device.int)
      if command_mode and not active_input:
        self.command_timer = input_command_timeout
      elif command_mode and active_input:
        self.command_timer = 0.0
      elif active_input:
        self.command_timer = 0.0
        get_game().enable_command_mode()

    if event.is_action_pressed("jump"):
      self.jump_down = true
      let
        time = now()
        toggle = self.jump_time and time < self.jump_time.get + fly_toggle

      if toggle:
        self.jump_time = nil_time
        self.flying = not self.flying
        for i in [0, 1]:
          self.set_collision_mask_bit(i, not self.flying)
      elif self.is_on_floor():
        self.velocity += vec3(0, jump_impulse, 0)
        self.jump_time = time
      else:
        self.jump_time = time
    elif event.is_action_released("jump"):
      self.jump_down = false

    if event.is_action_pressed("run"):
      let
        time = now()
        toggle = self.run_time and time < self.run_time.get + run_toggle

      if toggle:
        self.run_time = nil_time
        self.always_run = not self.always_run
      else:
        self.run_time = time
      self.running = not self.always_run
    elif event.is_action_released("run"):
      self.running = self.always_run

    if event of InputEventPanGesture and tool_mode == BlockMode:
      let pan = event as InputEventPanGesture
      self.pan_delta += pan.delta.y
      if self.pan_delta > 2:
        self.pan_delta = 0
        get_game().next_action()
      elif self.pan_delta < -2:
        self.pan_delta = 0
        get_game().prev_action()

    if event.is_action_pressed("next"):
      get_game().next_action()

    if event.is_action_pressed("previous"):
      get_game().prev_action()

    let ray = self.current_raycast
    if event.is_action_pressed("fire"):
      if not editing():
        self.skip_release = true
      if ray.is_colliding():
        var trigger_event = "target_fire"
        trigger(ray.get_collider(), trigger_event)
    elif event.is_action_released("fire"):
      self.skip_release = false
      get_game().trigger("mouse_released")

    if event.is_action_pressed("remove"):
      if ray.is_colliding():
        var trigger_event = "target_remove"
        trigger(ray.get_collider(), trigger_event)
    elif event.is_action_released("remove"):
      get_game().trigger("mouse_released")

proc get_player*(): Player = state.player as Player
