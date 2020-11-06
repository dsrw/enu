# bits of the build process that don't work from NimScript

import godotapigen, os, cpuinfo, cligen, strformat

proc generate_api(directory = "godotapi", json = "api.json") =
  gen_api directory, join_path(directory, json)

proc core_count = echo count_processors()

dispatch_multi [generate_api], [core_count]
