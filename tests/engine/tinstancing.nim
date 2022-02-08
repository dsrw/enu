import std / [sugar, os]
import controllers/script_controllers, core, models

#import pkg / compiler / [vm, vmdef, options, lineinfos, ast]
import libs / [interpreters, eval]

var state = GameState.active

state.logger = proc(level, msg: string) =
  echo level, ": ", msg

state.config.script_dir = current_source_path().parent_dir / "scripts" / "instancing"
state.config.lib_dir = current_source_path().parent_dir / ".." / ".." / "vmlib"
#  state.config.lib_dir = current_source_path().parent_dir / ".." / ".." / "vmlib"
#  var b = Bot.init
let controller = ScriptController.init

proc create(id: string): Bot =
  result = Bot.init()
  result.id = id

let bot1 = create("bot_script_1")
state.units.add bot1
let bot2 = create("bot_script_2")
state.units.add bot2
#
# bot2.units[0].load_script
#
# bot2.advance(0.1)
# bot2.units[1].load_script
# bot2.advance(0.1)
