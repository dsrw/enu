import std / [sugar, os]
import engine / [engine, contexts], core, models

var state = GameState.active

state.logger = proc(level, msg: string) =
  echo level, ": ", msg

state.config.script_dir = current_source_path().parent_dir / "scripts" / "instancing"
state.config.lib_dir = current_source_path().parent_dir / ".." / ".." / "vmlib"

proc create(id: string): Bot =
  result = Bot.init()
  result.id = id

  result.script_ctx = ScriptCtx.init
  unit_ctxs[result.script_ctx.engine] = result
  result.script_ctx.script = result.script_file
  result.load_script()

let bot1 = create("bot_script_1")
let bot2 = create("bot_script_2")

bot2.units[0].load_script

bot2.advance(0.1)
bot2.units[1].load_script
bot2.advance(0.1)
