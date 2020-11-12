import macros, random, tables
export random, tables

converter int_to_float*(i: int): float =
  result = i.float

converter int_slice_to_float*(range: Slice[int]): float = rand(range).float

converter int_slice_to_fint*(range: Slice[int]): int = rand(range)

converter float_slice_to_float*(range: Slice[float]): float = rand(range)

template times*(count: int, body: untyped): untyped =
  for x in 0..<count:
    body

template x*(count: int, body: untyped): untyped = times(count, body)

macro dump*(x: typed): untyped =
  let s = x.toStrLit
  let r = quote do:
    echo(`s` & " = " & $`x`)
  return r

template cycle*[T](args: varargs[T]): T =
  var
    positions {.global.}: Table[(string, int, int), int]
    key = instantiation_info()

  inc positions.mget_or_put(key, -1)

  if positions[key] >= args.len:
    positions[key] = 0

  args[positions[key]]

proc contains*(max, chance: int): bool =
  rand(1..max) <= chance
