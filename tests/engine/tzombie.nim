import potato_class, enu/types, pkg/print
import enu/base_api, enu/state_machine
var move_mode = 1
var me = ScriptNode()
let p = potato.new(label = "orange", color = green)
var target = p
forward 10
turn right
p.turn right

assert p.color == green
assert not p.is_nil
assert p of PotatoType
assert p.length == 5
assert p != potato
assert p.label == "orange"
assert p.friendly
