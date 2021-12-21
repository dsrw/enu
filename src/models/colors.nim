import pkg/core/godotcoretypes as godot except Color
import pkg/chroma
import pkg/print

export chroma

converter to_chroma_color*(self: godot.Color): chroma.Color = cast[chroma.Color](self)
converter to_godot_color*(self: chroma.Color): godot.Color = cast[godot.Color](self)

proc col*(hex: string): chroma.Color = hex.parse_hex

type
  Colors* = enum
    eraser, blue, red, green, black, white, brown

const action_colors* = [
  eraser: chroma.Color(),
  blue: col"0067ff",
  red: col"fc0e0b",
  green: col"14f707",
  black: col"000000",
  white: col"d9eed8",
  brown: col"3f302b"
]

proc action_index*(self: Color): Colors =
  for key, value in action_colors:
    if value == self:
      return key

when is_main_module:
  print action_colors[white]
