import macros, random
export random

converter int_to_float*(i: int): float =
  result = i.float

template times*(count: int, body: untyped): untyped =
  for x in 0..<count:
    body

template x*(count: int, body: untyped): untyped =
  for x in 0..<count:
    body

macro dump*(x: typed): untyped =
  let s = x.toStrLit
  let r = quote do:
    echo(`s` & " = " & $`x`)
  return r