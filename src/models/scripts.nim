import std / [monotimes]
import models / [types], engine / engine
import core

const ADVANCE_STEP* = 0.5.seconds

var ctxs*: Table[Engine, ScriptCtx]
var unit_ctxs*: Table[Engine, Unit]

proc active_unit*(): Unit = unit_ctxs[active_engine()]
proc active_ctx*(): ScriptCtx = ctxs[active_engine()]

proc start_advance_timer*(ctx: ScriptCtx) =
  ctx.timer = get_mono_time() + ADVANCE_STEP