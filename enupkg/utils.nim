import nre, strutils

proc detect_indent*(line: string): string =
  let r = line.find(re"( +).*")
  if r.is_none:
    result = ""
  else:
    let length = r.get.captures[0].len
    result = length.spaces
    if line.ends_with(":"):
      result &= 2.spaces

when is_main_module:
  assert detect_indent("  s") == "  "
  assert detect_indent("s") == ""
  assert detect_indent("    s") == "    "
  assert detect_indent("  s") == "  "
  assert detect_indent("  s:") == "    "
