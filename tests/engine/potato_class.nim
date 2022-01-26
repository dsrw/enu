import enu/types, enu/class_macros
import macros except name
import pkg / print
const is_clone = false

load_enu_script "potato_code.nim", "robot", false

var clone_obj*: PotatoType
me.ctrl.create_new = proc() =
  potato_cradle = clone_obj
