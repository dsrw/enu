import strformat, strutils

let
  (target, lib_ext, exe_ext) = case hostOS
    of "windows": ("windows", ".dll", ".exe")
    of "macosx" : ("osx", ".dylib", "")
    else        : ("linux", ".so", "")
  generated_dir   = "godotapi"
  api_json        = generated_dir & "/api.json"
  generator       = "tools/generate_api"
  godot_bin       = &"vendor/godot/bin/godot.{target}.tools.64{exe_ext}"
  godot_build_url = "https://docs.godotengine.org/en/stable/development/compiling/index.html"

version       = "0.0.0"
author        = "Scott Wadden"
description   = "Logo-like DSL for Godot"
license       = "MIT"
install_files = @["enu.nim"]
bin_dir       = "app/_dlls"
bin           = @["enu" & lib_ext]

requires "nim >= 1.3.5",
         "godot 0.8.1",
         "https://github.com/dsrw/Nim#2ebc22a"

task prereqs, "Generate Godot API binding":
  mk_dir generated_dir
  let scons = find_exe "scons"
  if scons == "":
    quit &"*** scons not found on path, and is required to build Godot. See {godot_build_url} ***"
  with_dir "vendor/godot":
    exec &"{scons} platform={target}"
  exec &"{godot_bin} --gdnative-generate-json-api {api_json}"
  exec &"nimble c --skipParentCfg {generator}"
  exec &"{find_exe generator} {generated_dir} {api_json}"

task clean, "Remove files produced by build":
  rm_dir generated_dir
  rm_dir ".nimcache"

task godot, "Launch godot":
  exec godot_bin & " app/project.godot &"
