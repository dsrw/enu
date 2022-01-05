import models / [builds, bots, ground, types]
import pkg / [model_citizen, print]
import godotapi/node
export builds, bots, ground, types, model_citizen

proc init*(_: type Model, node: Node): Model =
  result = Model(flags: ZenSet[ModelFlags].init, node: node)

proc code*(self: Unit): string =
  "echo \"hello world\"\n"

proc `code=`*(self: Unit, code: string) =
  echo "code: ", code
