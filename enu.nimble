import strformat

const
  GODOT_BIN     = "/Applications/Godot.app/Contents/MacOS/Godot"
  GENERATED_DIR = "godotapi"
  API_JSON      = GENERATED_DIR & "/api.json"
  GENERATOR     = "tools/generate"


version     = "0.1.0"
author      = "Scott Wadden"
description = "Logo-like DSL for godot"
license     = "MIT"
install_files = @["enu.nim"]
bin         = @["enu"]
bin_dir     = "bin"
requires "nim >= 1.0.6",
         "godot 0.7.27"


task generate, "Generate Godot API binding":
  mk_dir GENERATED_DIR
  exec &"{GODOT_BIN} --gdnative-generate-json-api {API_JSON}"
  exec &"nimble c {GENERATOR}"
  exec &"{GENERATOR} {GENERATED_DIR} {API_JSON}"
  
task clean, "Remove files produced by build":
  rm_dir GENERATED_DIR
  rm_dir ".nimcache"
  rm_dir "_dlls"
