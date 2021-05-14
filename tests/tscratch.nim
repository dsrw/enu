import sequtils

type
  BlockColor* = tuple[main, border: int]
  Colors* = enum green, red, blue, black, white, brown

proc color*(c: Colors): BlockColor =
  case c:
  of green: (0x14F707, 0)
  of red: (0xFC0E0B, 0)
  of blue: (0x0067FF, 0)
  of black: (0, 0xffffff)
  of white: (0x929292, 0)
  of brown: (0x3F302B, 0)

let BlockColors* = [
  green: (0x14F707, 0),
  red: (0xFC0E0B, 0),
  blue: (0x0067FF, 0),
  black: (0, 0xffffff),
  white: (0x929292, 0),
  brown: (0x3F302B, 0)
]

var
  remaining = {Colors.low..Colors.high}

while true:
  if remaining.len > 0:
    let removing = {remaining.to_seq[0]}
    remaining = remaining - removing
  else:
    break
