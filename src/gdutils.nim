import std/[strformat]
import pkg/[godot]
import godotapi/[node, scene_tree, voxel_buffer]
import core, models/[states]
export strformat.`&`, states, types

proc bind_signal*(
    receiver: Object,
    sender: Object,
    signal: tuple[name: string, meth: string],
    binds: varargs[Variant, `new_variant`] = @[],
) =
  if not sender.has_signal(signal.name):
    sender.add_user_signal(signal.name)
  var variants = new_array()
  for obj in binds:
    variants.add(obj)
  discard sender.connect(signal.name, receiver, "_on_" & signal.meth, variants)

proc bind_signal*(
    receiver: Object,
    sender: Object,
    signal: string,
    binds: varargs[Variant, `new_variant`] = @[],
) =
  bind_signal(receiver, sender, (signal, signal), binds)

proc bind_signals*(receiver, sender: Object, signals: varargs[string]) =
  let send_node = if sender == nil: state.nodes.game else: sender

  for signal in signals:
    receiver.bind_signal(send_node, signal)

proc bind_signals*(receiver: Node, signals: varargs[string]) =
  bind_signals(receiver, nil, signals)

proc trigger*(
    node: Object, signal: string, args: varargs[Variant, `new_variant`]
) =
  if not node.has_user_signal(signal):
    node.add_user_signal(signal)
  node.emit_signal(signal, args)

proc trigger*(signal: string, args: varargs[Variant]) =
  trigger(state.nodes.game, signal, args)

template find*(name: string, T: type Node): untyped =
  {.line.}:
    let obj = self.find_node(name) as T
    assert ?obj
    obj
