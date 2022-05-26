import std / [strutils, math]
import types, base_api

proc all_bots(): seq[Bot] = discard

proc all*(_: type Bot): seq[Bot] = all_bots()

proc play*(self: Bot, animation_name: string) = discard

proc walk*(self: Bot) =
  self.speed = 1.0

proc run*(self: Bot) =
  self.speed = 5.0
