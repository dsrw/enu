import strformat, strutils, os

let
  (target, lib_ext, exe_ext) = case hostOS
    of "windows": ("windows", ".dll", ".exe")
    of "macosx" : ("osx", ".dylib", "")
    else        : ("x11", ".so", "")
  generated_dir   = "godotapi"
  api_json        = "api.json"
  generator       = "tools/build_helpers"
  godot_bin       = this_dir() & &"/vendor/godot/bin/godot.{target}.opt.tools.64{exe_ext}"
  godot_build_url = "https://docs.godotengine.org/en/stable/development/compiling/index.html"

version       = "0.0.1"
author        = "Scott Wadden"
description   = "Logo-like DSL for Godot"
license       = "MIT"
install_files = @["enu.nim"]
bin_dir       = "app/_dlls"
bin           = @["enu" & lib_ext]

requires "nim >= 1.4.0",
         "https://github.com/dsrw/godot-nim#7c2f345",
         "https://github.com/dsrw/Nim#7633a23",
         "cligen 1.2.2",
         "json_serialization"

task prereqs, "Generate Godot API binding":
  mk_dir generated_dir
  exec "git submodule update --init"
  exec "ln -sfh ../../godot_voxel vendor/godot/modules/voxel"
  exec &"nimble c --skipParentCfg {generator}"
  let
    gen = find_exe generator
    scons = find_exe "scons"
    cores = gorge gen & " core_count"
  if scons == "":
    quit &"*** scons not found on path, and is required to build Godot. See {godot_build_url} ***"
  with_dir "vendor/godot":
    exec &"{scons} -j{cores} platform={target} target=release_debug"
  exec &"{godot_bin} --gdnative-generate-json-api {join_path generated_dir, api_json}"
  exec &"{gen} generate_api -d={generated_dir} -j={api_json}"

task import_assets, "Import Godot assets. Only required if you're not using the Godot editor":
  exec godot_bin & " app/project.godot --editor --quit"

task clean, "Remove files produced by build":
  rm_dir generated_dir
  rm_dir ".nimcache"

task edit, "Edit project in Godot":
  exec godot_bin & " app/project.godot &"

task start, "Run Enu":
  cd "app"
  exec godot_bin & " scenes/game.tscn"
