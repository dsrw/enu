include compiler/nimeval

proc load_module*(i: Interpreter, module_name, code: string) =
  assert i != nil

  var module: PSym
  for m in i.graph.modules:
    if m != nil and m.name.s == module_name:
      module = m
      break

  if module.is_nil:
    module = i.graph.make_module(module_name)

  init_str_table(module.tab)
  module.ast = nil
  let s = ll_stream_open(code)
  process_module(i.graph, module, s)
