import std / [monotimes, os, hashes, sets, strutils]
import core, globals, engine/engine, types
import godot, compiler/idgen
import godotapi / [node]

export engine

type
  Callback* = proc(delta: float): bool
  ScriptCtx* = ref object
    speed: float
    script*: string
    engine*: Engine
    timer: MonoTime
    prefix: string
    paused: bool
    id: int
    load_vars*: proc()
    reload_script: proc()

using self: auto

const ADVANCE_STEP = 0.5.seconds

var
  module_names: HashSet[string]
  active_node: Node
  ctxs: Table[Engine, ScriptCtx]
  failed: seq[tuple[ctx: ScriptCtx, ex: ref VMQuit]]
  starting = true
  modules_to_load: HashSet[ScriptCtx]

template ctx: untyped = self.script_ctx

proc hash*(s: ScriptCtx): Hash = s.id.hash
proc init*(t: typedesc[ScriptCtx], prefix: string): ScriptCtx =
  let e = Engine.init()
  result = ScriptCtx(id: get_id(), engine: e, timer: MonoTime.high, prefix: prefix)
  ctxs[e] = result
  modules_to_load.incl result

proc current_ctx*(): ScriptCtx = ctxs[current_engine()]

proc is_script_loadable*(self): bool =
  ctx.script != "none" and ctx.script.file_exists

proc engine*(self): Engine = ctx.engine
proc script*(self): string = ctx.script
proc paused*(self): bool = ctx.paused
proc `paused=`*(self; paused: bool) = ctx.paused = paused
proc speed*(self): float = ctx.speed
proc `speed=`*(self; speed: float) = ctx.speed = speed

proc set_script*(self) =
  let path = ctx.prefix & &"_{self.script_index}.nim"
  ctx.script = join_path(config.script_dir, path)

proc start_advance_timer*(ctx: ScriptCtx) =
  ctx.timer = get_mono_time() + ADVANCE_STEP

proc advance*(self; delta: float64) =
  let now = get_mono_time()
  active_node = self
  let e = ctx.engine
  if e.callback == nil or (not e.callback(delta)):
    ctx.timer = MonoTime.high
    discard e.call_proc("set_action_running", e.module_name, false)
    self.update_running_state ctx.engine.resume()
  elif now >= ctx.timer:
    ctx.timer = now + ADVANCE_STEP
    e.saved_callback = e.callback
    e.callback = nil
    discard e.resume()

proc load_vars*(self) =
  let self_name = if self.is_nil: "nil" else: self.name
  let active_name = if active_node.is_nil: "nil" else: active_node.name
  let e = ctx.engine
  when compiles(self.on_load_vars):
    self.on_load_vars()

proc begin_move(self; direction: Vector3, steps: float): bool =
  self.load_vars()
  current_engine().callback = self.on_begin_move(direction, steps)
  result = not current_engine().callback.is_nil

proc begin_turn(self; direction: Vector3, degrees: float): bool =
  self.load_vars()
  current_engine().callback = self.on_begin_turn(direction, degrees)
  result = not current_engine().callback.is_nil

proc error*(e: Engine, ex: ref VMQuit) =
  e.running = false
  when defined(enu_simulate):
    raise ex
  else:
    err ex.msg
    trigger("script_error")

proc retry_failed_scripts =
  # We don't know what order scripts will load in.
  # Once all scripts have been loaded, retry the
  # failures. Keep retrying until the list of failures
  # stops changing, then print any remaining errors.
  starting = false
  var cycling = true
  while cycling:
    let prev_failed = failed
    failed = @[]
    for f in prev_failed:
      f.ctx.reload_script()
    if prev_failed == failed:
      cycling = false

      for f in failed:
        f.ctx.engine.error(f.ex)

proc load_script*(self; script = "", retry_failed = true) =
  modules_to_load.excl ctx
  defer:
    if modules_to_load.card == 0 and retry_failed:
      retry_failed_scripts()

  if script != "":
    ctx.script = script
  ctx.reload_script = proc() =
    self.load_script(retry_failed = false)
  ctx.engine.callback = nil
  try:
    if not self.is_script_loadable:
      return
    if not ctx.paused:
      let module_name = ctx.script.split_file.name
      module_names.incl module_name
      var others = module_names
      others.excl module_name
      let imports = if others.card > 0:
        "import " & others.to_seq.join(", ")
      else:
        ""
      let code = self.code_template(module_name & ".nim", imports)

      let initialized = ctx.engine.initialized
      ctx.load_vars = proc() = self.load_vars()
      ctx.engine.load(config.script_dir, ctx.script, code, config.lib_dir)
      if not initialized:
        with ctx.engine:
          expose "yield_script", proc(a: VmArgs):bool =
            current_engine().callback = current_engine().saved_callback
            current_engine().saved_callback = nil
            true

          expose("begin_move", a => self.begin_move(get_vec3(a, 0), get_float(a, 1)))
          expose("begin_turn", a => self.begin_turn(get_vec3(a, 0), get_float(a, 1)))
          expose("echo_console", a => echo_console(get_string(a, 0)))
          expose "sleep_impl", proc(a: VmArgs): bool =
            let seconds = get_float(a, 0)
            var duration = 0.0
            when compiles(self.on_sleep):
              self.on_sleep(seconds)
            current_engine().callback = proc(delta: float): bool =
              duration += delta
              return duration < seconds
            true
          expose "quit", proc(a: VmArgs): bool =
            let e = current_engine()
            e.exit_code = some(a.get_int(0).int)
            e.pause()
            e.running = false
            result = false
        self.on_script_loaded(ctx.engine)
    if not ctx.paused:
      self.update_running_state ctx.engine.run()
  except VMQuit as e:
    if starting:
      failed.add (ctx, e)
    else:
      self.engine.error(e)
