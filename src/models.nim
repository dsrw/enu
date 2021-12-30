import models / [builds, bots, ground, types]
import pkg / [model_citizen, print]
export builds, bots, ground, types, model_citizen

proc init*(_: type Model, T: type, node: T): Model[T] =
  result = Model[T](flags: ZenSet[ModelFlags].init, node: node)
