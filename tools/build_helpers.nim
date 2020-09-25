# bits of the build process that don't work from NimScript

import godotapigen, os, cpuinfo, cligen, strformat

proc generate_api(directory = "godotapi", json = "api.json") =
  gen_api directory, join_path(directory, json)

proc core_count = echo count_processors()

proc reset_state =
  copy_file "app/scenes/default_level.tscn", "app/scenes/default.tscn"
  remove_dir "app/state/voxels"
  for kind in ["grid", "bot"]:
    for file in walk_files(&"app/scripts/{kind}_*.nim"):
      remove_file file
  echo "State deleted"


dispatch_multi [generate_api], [core_count], [reset_state]
