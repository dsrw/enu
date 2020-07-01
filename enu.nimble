import strformat, strutils

const
  GENERATED_DIR = "godotapi"
  API_JSON      = GENERATED_DIR & "/api.json"
  GENERATOR     = "tools/generate"

version       = "0.1.0"
author        = "Scott Wadden"
description   = "Logo-like DSL for godot"
license       = "MIT"
install_files = @["enu.nim"]
bin_dir       = "app/_dlls"
when defined windows:
  bin = @["enu.dll"]
  const GODOT_BIN = "vendor/godot/bin/godot.windows.tools.64.exe"
else:
  bin = @["enu.dylib"]
  const GODOT_BIN = "vendor/godot/bin/godot.osx.tools.64"

requires "nim >= 1.2.0",
         "godot 0.8.0"

task generate, "Generate Godot API binding":
  mk_dir GENERATED_DIR
  exec &"{GODOT_BIN} --gdnative-generate-json-api {API_JSON}"
  exec &"nimble c --skipParentCfg {GENERATOR}"
  exec &"{find_exe GENERATOR} {GENERATED_DIR} {API_JSON}"

task clean, "Remove files produced by build":
  rm_dir GENERATED_DIR
  rm_dir ".nimcache"

task godot, "Launch godot":
  exec GODOT_BIN & " &"
