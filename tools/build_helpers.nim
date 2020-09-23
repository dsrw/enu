import godotapigen, os, cpuinfo, cligen

proc generate_api(directory = "godotapi", json = "api.json") =
  gen_api directory, join_path(directory, json)

proc core_count = echo count_processors()

dispatch_multi [generate_api], [core_count]
