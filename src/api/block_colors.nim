type
  BlockColor* = tuple[main, border: int]
  Colors* = enum green, red, blue, black, white, brown

let BlockColors*: array[Colors, BlockColor] = [
  (0x14F707, 0),
  (0xFC0E0B, 0),
  (0x0067FF, 0),
  (0, 0xffffff),
  (0x929292, 0),
  (0x3F302B, 0)
]
