import strformat, strutils, os, json

var
  (target, lib_ext, exe_ext) = case host_os
    of "windows": ("windows", ".dll", ".exe")
    of "macosx" : ("osx", ".dylib", "")
    else        : ("x11", ".so", "")
  cpu             = if host_cpu == "arm64": "arm64"
                    else: "64"
  generated_dir   = "generated/godotapi"
  api_json        = "api.json"
  generator       = "tools/build_helpers"
  godot_bin       = this_dir() & &"/vendor/godot/bin/godot.{target}.opt.tools.{cpu}{exe_ext}"
  godot_build_url = "https://docs.godotengine.org/en/stable/development/compiling/index.html"
  gcc_dlls        = ["libgcc_s_seh-1.dll", "libwinpthread-1.dll"]
  nim_dlls        = ["pcre64.dll"]
  godot_opts      = "target=release_debug"
  generator_path  = ""

version       = "0.1.99"
author        = "Scott Wadden"
description   = "Logo-like DSL for Godot"
license       = "MIT"
install_files = @["enu.nim"]
bin_dir       = "app/_dlls"
src_dir       = "src"
bin           = @["enu" & lib_ext]

requires "nim >= 1.6.0", # godot transform issue in 1.6.2
         "https://github.com/pragmagic/godot-nim#982ab52",
         "https://github.com/dsrw/Nim#0cfef707e3eed99b32f909e3aa5e41a05af734d8",
         "https://github.com/dsrw/model_citizen 0.6.5",
         "cligen 1.5.19",
         "print#f78c855",
         "chroma",
         "https://github.com/dsrw/nanoid.nim 0.2.1"

proc gen: string =
  if generator_path == "":
    exec &"nimble c {generator}"
    generator_path = find_exe generator
  generator_path

task build_godot, "Build godot":
  mk_dir generated_dir
  exec "git submodule update --init"
  let
    scons = find_exe "scons"
    cores = gorge(gen() & " core_count")
  if scons == "":
    quit &"*** scons not found on path, and is required to build Godot. See {godot_build_url} ***"
  with_dir "vendor/godot":
    exec &"{scons} custom_modules=../modules platform={target} arch={cpu} {godot_opts} -j{cores}"

task build_headless, "build headless godot":
  target = "server use_static_cpp=no"
  build_godot_task()

task test, "run godot tests":
  exec "nimble c tests/godot/tnode_factories"
  cd "tests/godot/app"
  exec this_dir() / &"vendor/godot/bin/godot_server.osx.opt.tools.{cpu} --quiet --script tests/tests.gdns"

proc find_and_copy_dlls(dep_path, dest: string, dlls: varargs[string]) =
  for dep in dlls:
    cp_file dep_path.join_path(dep), join_path(dest, dep)

task prereqs, "Generate Godot API binding":
  build_godot_task()
  exec &"{godot_bin} --gdnative-generate-json-api {join_path generated_dir, api_json}"
  exec &"{gen()} generate_api -d={generated_dir} -j={api_json}"
  exec &"{gen()} copy_stdlib -d=vmlib/stdlib"
  if host_os == "windows":
    # Assumes mingw
    find_and_copy_dlls find_exe("gcc").parent_dir, join_path("app", "_dlls"), gcc_dlls
    find_and_copy_dlls get_current_compiler_exe().parent_dir, join_path("vendor", "godot", "bin"), nim_dlls

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

task build_and_start, "Build and start":
  exec "nimble build"
  start_task()

task gen, "Generate build_helpers":
  discard gen()

proc code_sign(id, path: string) =
  exec &"codesign -s '{id}' -v --timestamp --options runtime {path}"

task dist, "Build distribution":
  let release_bin = &"vendor/godot/bin/godot.{target}.opt.{cpu}{exe_ext}"
  prereqs_task()
  exec &"{gen()} write_export_presets --enu_version {version}"
  godot_opts = "target=release tools=no"
  build_godot_task()
  rm_dir "dist"

  when host_os == "macosx":
    let config = read_file("dist_config.json").parse_json
    mkdir "dist"
    exec "cp -r installer/Enu.app dist/Enu.app"
    exec &"{gen()} write_info_plist --enu_version {version}"
    exec "mkdir -p dist/Enu.app/Contents/MacOS"
    exec "mkdir -p dist/Enu.app/Contents/Frameworks"
    exec &"cp {release_bin} dist/Enu.app/Contents/MacOS/Enu"
    let pck_path = this_dir() & "/dist/Enu.app/Contents/Resources/Enu.pck"
    exec &"{godot_bin} --path app --export-pack \"mac\" " & pck_path
    exec "nimble build -d:release -d:dist"
    exec "cp app/_dlls/enu.dylib dist/Enu.app/Contents/Frameworks"
    exec "cp -r vmlib dist/Enu.app/Contents/Resources/vmlib"

    if config["sign"].get_bool:
      let id = config["id"].get_str
      code_sign(id, "dist/Enu.app/Contents/Frameworks/enu.dylib")
      code_sign(id, "dist/Enu.app")

    let package_name = &"enu-{version}.dmg"
    if config["package"].get_bool:

      exec &"hdiutil create {package_name} -ov -volname Enu -fs HFS+ -srcfolder dist"
      exec &"mv {package_name} dist"

    if config["notarize"].get_bool:
      let
        username = config["notarize-username"].get_str
        password = config["notarize-password"].get_str

      exec &"xcrun altool --notarize-app --primary-bundle-id 'ca.dsrw.enu'  --username '{username}' --password '{password}' --file dist/{package_name}"

  elif host_os == "windows":
    let root = &"dist/enu-{version}"
    mkdir root
    exec "strip " & release_bin
    cp_file release_bin, root & "/enu.exe"
    exec &"rcedit {root}/enu.exe --set-icon media/enu_icon.ico"
    let pck_path = &"{this_dir()}/{root}/enu.pck"
    exec &"{godot_bin} --path app --export-pack \"win\" " & pck_path
    exec "nimble build -d:release -d:dist"
    cp_file "app/_dlls/enu.dll", root & "/enu.dll"
    find_and_copy_dlls find_exe("gcc").parent_dir, root, gcc_dlls
    find_and_copy_dlls get_current_compiler_exe().parent_dir, root, nim_dlls
    cp_dir "vmlib", root & "/vmlib"
    exec &"iscc /DVersion={version} installer/enu.iss"
    with_dir "dist":
      exec &"zip -r enu-{version}-windows-x64.zip enu-{version}"

  elif host_os == "linux":
    let root = &"dist/enu-{version}"
    mkdir root & "/bin"
    mkdir root & "/lib"
    exec "nimble build -d:release -d:dist"
    exec "strip " & release_bin
    cp_file release_bin, root & "/bin/enu"
    cp_file "app/_dlls/enu.so", root & "/lib/enu.so"
    cp_dir "vmlib", root & "/lib/vmlib"
    exec "chmod +x " & root & "/bin/enu"
    let pck_path = this_dir() & "/" & root & "/enu.pck"
    exec &"{godot_bin} --path app --export-pack \"x11\" " & pck_path
    with_dir "dist":
      exec &"tar -czvf enu-{version}-linux-x64.tar.gz enu-{version}"

  else:
    quit &"dist is currently unsupported on {host_os}"
