import pkg / [model_citizen, print]
import types

proc init*(_: type Console): Console =
  Console(
    log: Zen.init(seq[string])
  )
