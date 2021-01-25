import strformat, strutils, os, json

let
  (target, lib_ext, exe_ext) = case host_os
    of "windows": ("windows", ".dll", ".exe")
    of "macosx" : ("osx", ".dylib", "")
    else        : ("x11", ".so", "")
  generated_dir   = "godotapi"
  api_json        = "api.json"
  generator       = "tools/build_helpers"
  godot_bin       = this_dir() & &"/vendor/godot/bin/godot.{target}.opt.tools.64{exe_ext}"
  godot_build_url = "https://docs.godotengine.org/en/stable/development/compiling/index.html"
  gcc_dlls        = ["libgcc_s_seh-1.dll", "libwinpthread-1.dll"]
  nim_dlls        = ["pcre64.dll"]

version       = "0.1.0"
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
         "json_serialization",
         "print"

var
  godot_opts = "target=release_debug"

task build_godot, "Build godot":
  mk_dir generated_dir
  exec "git submodule update --init"
  exec &"nimble c --skipParentCfg {generator}"
  let
    gen = find_exe generator
    scons = find_exe "scons"
    cores = gorge gen & " core_count"
  if scons == "":
    quit &"*** scons not found on path, and is required to build Godot. See {godot_build_url} ***"
  with_dir "vendor/godot":
    exec &"{scons} custom_modules=../modules platform={target} {godot_opts} -j{cores}"

proc find_and_copy_dlls(dep_path, dest: string, dlls: varargs[string]) =
  for dep in dlls:
    cp_file dep_path.join_path(dep), join_path(dest, dep)

task prereqs, "Generate Godot API binding":
  build_godot_task()
  let gen = find_exe generator
  exec &"{godot_bin} --gdnative-generate-json-api {join_path generated_dir, api_json}"
  exec &"{gen} generate_api -d={generated_dir} -j={api_json}"
  exec &"{gen} copy_stdlib -d=vmlib/stdlib"
  if host_os == "windows":
    # Assumes mingw
    find_and_copy_dlls(parent_dir find_exe("gcc"), join_path("app", "_dlls"), gcc_dlls)
    find_and_copy_dlls(parent_dir get_current_compiler_exe(), join_path("vendor", "godot", "bin"), nim_dlls)    

task import_assets, "Import Godot assets. Only required if you're not using the Godot editor":
  exec godot_bin & " app/project.godot --editor --quit"

task clean, "Remove files produced by build":
  rm_dir generated_dir
  rm_dir ".nimcache"

task edit, "Edit project in Godot":
  exec godot_bin & " app/project.godot &"

task start, "Run Enu":
  cd "app"
  exec godot_bin & " --verbose scenes/game.tscn"

proc code_sign(id, path: string) =
  exec &"codesign -s '{id}' -v --timestamp --options runtime {path}"

task dist, "Build distribution":
  let config = read_file("dist_config.json").parse_json
  prereqs_task()
  when host_os == "macosx":
    godot_opts = "target=release tools=no"
    build_godot_task()
    rm_dir "dist"
    mkdir "dist"
    exec "cp -r templates/Enu.app dist/Enu.app"
    exec "mkdir -p dist/Enu.app/Contents/MacOS"
    exec "mkdir -p dist/Enu.app/Contents/Frameworks"
    exec "cp vendor/godot/bin/godot.osx.opt.64 dist/Enu.app/Contents/MacOS/Enu"
    let pck_path = this_dir() & "/dist/Enu.app/Contents/Resources/Enu.pck"
    exec &"{godot_bin} --path app --export-pack \"mac\" " & pck_path
    exec "nimble build -d:release"
    exec "cp app/_dlls/enu.dylib dist/Enu.app/Contents/Frameworks"
    exec "cp -r vmlib dist/Enu.app/Contents/Resources/vmlib"

    if config["sign"].get_bool:
      let id = config["id"].get_str
      code_sign(id, "dist/Enu.app/Contents/Frameworks/enu.dylib")
      code_sign(id, "dist/Enu.app")

    if config["package"].get_bool:
      exec "hdiutil create Enu.dmg -ov -volname Enu -fs HFS+ -srcfolder dist"
      exec "mv Enu.dmg dist"

    if config["notarize"].get_bool:
      let
        username = config["notarize-username"].get_str
        password = config["notarize-password"].get_str

      exec &"xcrun altool --notarize-app --primary-bundle-id 'ca.dsrw.enu'  --username '{username}' --password '{password}' --file dist/Enu.dmg"