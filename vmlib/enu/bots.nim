import std / [strutils, math]
import types, base_api, bridge_utils

bindings:
  proc all_bots(): seq[Bot]
  proc play*(self: Bot, animation_name: string)

proc all*(_: type Bot): seq[Bot] = all_bots()

proc walk*(self: Bot) =
  self.speed = 1.0

proc run*(self: Bot) =
  self.speed = 5.0
