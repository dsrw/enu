import enu/types, enu/class_macros

template name(n: untyped) = class_name(n, ScriptNode)
const is_clone = false
const enu_root = true
preprocess "potato_code.nim", "ScriptNode"

var clone_obj: PotatoType
let s1 = self
block:
  const enu_root = false
  include "potato_code.nim"

self.ctrl.create_new = proc() =
  potato_cradle = clone_obj

block:
  const is_clone = true

  preprocess "potato_code.nim", "ScriptNode"
  let s2 = self
  clone_obj = self
  block:
    const enu_root = false
    include "potato_code.nim"
    let s3 = self
    assert s1 != s2
    assert s2 == s3

    let p = potato.new(color = "orange")
    assert not p.is_nil
    assert p of PotatoType
    assert p.length == 5
    assert p != potato
    assert p.color == "orange"
