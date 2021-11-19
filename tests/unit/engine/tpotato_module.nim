import enu/types, enu/class_macros
import macros except name



const is_clone = false
const enu_root = true


var color = red
template name(n: untyped) = class_name(n, ScriptNode, false)
preprocess "potato_code.nim", "ScriptNode"

var clone_obj: PotatoType
let s1 = self
block:
  template name(n: untyped) = class_name(n, ScriptNode, true)
  const enu_root = false
  include "potato_code.nim"

self.ctrl.create_new = proc() =
  potato_cradle = clone_obj

proc sleep(time: float) = discard

block:
  const is_clone = true
  template name(n: untyped) = class_name(n, ScriptNode, false)
  preprocess "potato_code.nim", "ScriptNode"
  let s2 = self
  clone_obj = self
  block:
    const enu_root = false
    template name(n: untyped) = class_name(n, ScriptNode, true)
    include "potato_code.nim"
    let s3 = self
    assert s1 != s2
    assert s2 == s3

    let p = potato.new(label = "orange", color = green)
    assert color == green
    assert not p.is_nil
    assert p of PotatoType
    assert p.length == 5
    assert p != potato
    assert p.label == "orange"
