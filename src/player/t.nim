import macros
type
  TestType* = object
    move_mode*: bool
    speed*: float
    index*: int
    drawing*: bool

proc get_bool(self: TestType, s: string): bool = true
proc get_int(self: TestType, s: string): int = 2
proc get_float(self: TestType, s: string): float = 3.0


proc main() =
  template set(prop, getter) =
    self.prop = get_`getter`(self, "hi")

  var self = TestType()

  set move_mode, get_bool
  set speed, get_float
  set index, get_int
  set drawing, get_bool

  echo self.repr

main()
