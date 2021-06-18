# bits of the build process that don't work from NimScript

import godotapigen, os, cpuinfo, cligen, strformat,
       compiler/nimeval

include "../installer/export_presets.cfg.nimf"
include "../installer/Info.plist.nimf"

const STDLIB = find_nim_std_lib_compile_time()

proc core_count = echo count_processors()

proc find_test(test = ""): string =
  try: ".last_test".read_file
  except: quit("Nothing to do")

proc rebuild_last_test_for_debugger() =
  let test = find_test()
  quit exec_shell_cmd("nimble c --debugger:native " & test)

proc run_test(test = "") =
  ## Helper for building/running tests from file watchers.
  ## Should be used automatically in Jetbrains IDE with File Watcher plugin.
  var test = test
  if test.len > 0 and test.split_file.name[0] != 't':
    test = ""
  var build = true
  if test == "":
    test = find_test(test)
    #if "-d:release" notin test: test &= " -d:release"
    #else:
    build = false

  if "/godot/" in test:
    if build:
      let r = exec_shell_cmd("nimble c " & test)
      if r > 0: quit r
      write_file ".last_test", test
    set_current_dir "app"
    quit exec_shell_cmd("../vendor/godot/bin/godot_server.osx.opt.tools.64 --script tests/tests.gdns")
  else:
    if build:
      write_file ".last_test", test
    quit exec_shell_cmd("nimble c -r " & test)

proc copy_stdlib(destination: string) =
  remove_dir destination
  create_dir destination
  for path in @["core", "pure", "std", "fusion", "system"]:
    copy_dir join_path(STDLIB, path), join_path(destination, path)

  for file in @["system.nim", "prelude.nim", "stdlib.nimble"]:
    copy_file join_path(STDLIB, file),
              join_path(destination, file)

proc generate_api(directory = "godotapi", json = "api.json") =
  gen_api directory, join_path(directory, json)

proc write_export_presets(enu_version: string) =
  write_file("app/export_presets.cfg", generate_export_presets(enu_version))

proc write_info_plist(enu_version: string) =
  write_file("dist/Enu.app/Contents/Info.plist", generate_info_plist(enu_version))

dispatch_multi [generate_api], [core_count], [copy_stdlib], [write_export_presets],
               [write_info_plist], [run_test], [rebuild_last_test_for_debugger]
