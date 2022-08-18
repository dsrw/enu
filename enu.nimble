import strformat, strutils, strscans, os, json

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

requires "nim >= 1.6.4", "nim < 1.8.0",
         "https://github.com/pragmagic/godot-nim#982ab52",
         "https://github.com/dsrw/Nim#a6d502f",
         "https://github.com/dsrw/model_citizen 0.7.1",
         "https://github.com/dsrw/nanoid.nim 0.2.1",
         "cligen 1.5.19",
         "print#f78c855",
         "chroma",
         "markdown",
         "https://github.com/haxscramper/hmatching",
         "zippy"

proc gen: string =
  if generator_path == "":
    exec &"nimble c -d:ssl {generator}"
    generator_path = find_exe generator
  generator_path

task build_godot, "Build godot":
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

proc copy_fonts =
  when host_os == "macosx":
    with_dir "fonts/mono/SFMonoFonts.pkg/Payload/Library/Fonts":
      let dest = "../../../../../../app/themes"
      cp_file "SF-Mono-Regular.otf", dest / "mono.otf"
      cp_file "SF-Mono-RegularItalic.otf", dest / "mono-italic.otf"
      cp_file "SF-Mono-Bold.otf", dest / "mono-bold.otf"
      cp_file "SF-Mono-BoldItalic.otf", dest / "mono-bold-italic.otf"

    with_dir "fonts/pro/SFProFonts.pkg/Payload/Library/Fonts":
      let dest = "../../../../../../app/themes"
      cp_file "SF-Pro-Text-Regular.otf", dest / "text.otf"
      cp_file "SF-Pro-Text-RegularItalic.otf", dest / "text-italic.otf"
      cp_file "SF-Pro-Text-Bold.otf", dest / "text-bold.otf"
      cp_file "SF-Pro-Text-BoldItalic.otf", dest / "text-bold-italic.otf"

      cp_file "SF-Pro-Display-Regular.otf", dest / "display.otf"
      cp_file "SF-Pro-Display-RegularItalic.otf", dest / "display-italic.otf"
      cp_file "SF-Pro-Display-Bold.otf", dest / "display-bold.otf"
      cp_file "SF-Pro-Display-BoldItalic.otf", dest / "display-bold-italic.otf"
  else:
    with_dir "fonts/static":
      let dest = "../../app/themes"
      cp_file "RobotoMono-Regular.ttf", dest / "mono.otf"
      cp_file "RobotoMono-Italic.ttf", dest / "mono-italic.otf"
      cp_file "RobotoMono-Bold.ttf", dest / "mono-bold.otf"
      cp_file "RobotoMono-BoldItalic.ttf", dest / "mono-bold-italic.otf"

    with_dir "fonts":
      let dest = "../app/themes"
      cp_file "Roboto-Regular.ttf", dest / "text.otf"
      cp_file "Roboto-Italic.ttf", dest / "text-italic.otf"
      cp_file "Roboto-Bold.ttf", dest / "text-bold.otf"
      cp_file "Roboto-BoldItalic.ttf", dest / "text-bold-italic.otf"

      # Roboto doesn't have a display version. Consider using something else
      # here.
      cp_file "Roboto-Regular.ttf", dest / "display.otf"
      cp_file "Roboto-Italic.ttf", dest / "display-italic.otf"
      cp_file "Roboto-Bold.ttf", dest / "display-bold.otf"
      cp_file "Roboto-BoldItalic.ttf", dest / "display-bold-italic.otf"

proc download_fonts =
  rm_dir "fonts"
  mk_dir "fonts"
  with_dir "fonts":
    when host_os == "macosx":
      exec "curl -OJL https://devimages-cdn.apple.com/design/resources/download/SF-Pro.dmg"
      exec "curl -OJL https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg"
      exec "hdiutil attach SF-Mono.dmg"
      exec "pkgutil --expand-full '/Volumes/SFMonoFonts/SF Mono Fonts.pkg' mono"
      exec "hdiutil detach /Volumes/SFMonoFonts"

      exec "hdiutil attach SF-Pro.dmg"
      exec "pkgutil --expand-full '/Volumes/SFProFonts/SF Pro Fonts.pkg' pro"
      exec "hdiutil detach /Volumes/SFProFonts"

    else:
      exec "curl -OJL \"https://fonts.google.com/download?family=Roboto\""
      exec "curl -OJL \"https://fonts.google.com/download?family=Roboto%20Mono\""
      exec "unzip Roboto.zip"
      exec "unzip -o Roboto_Mono.zip"

proc mingw_path: string =
  var pre, match: string
  let shim_help = gorge_ex("gcc --shimgen-help")
  # chocolatey uses shim exes, so we need to parse shimgen-help to find the real
  # gcc path
  if shim_help.exit_code < 1 and shim_help.output.scanf("$+Target: '$+'", pre, match):
    match.parent_dir
  else:
    find_exe("gcc").parent_dir

proc gen_binding_and_copy_stdlib =
  if host_os == "windows":
    # Assumes mingw
    find_and_copy_dlls mingw_path(), join_path("app", "_dlls"), gcc_dlls
    find_and_copy_dlls get_current_compiler_exe().parent_dir, join_path("vendor", "godot", "bin"), nim_dlls
  mk_dir generated_dir
  exec &"{godot_bin} --verbose --gdnative-generate-json-api {join_path generated_dir, api_json}"
  exec &"{gen()} generate_api -d={generated_dir} -j={api_json}"
  exec &"{gen()} copy_stdlib -d=vmlib/stdlib"

task prereqs, "Generate Godot API binding":
  build_godot_task()
  download_fonts()
  copy_fonts()
  gen_binding_and_copy_stdlib()

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

task dist_prereqs, "Build godot debug and release versions, and download fonts":
  if target == "x11":
    target = "server"
    build_godot_task()
    target ="x11"
    exec &"mv {godot_bin.replace(\"godot.x11\", \"godot_server.x11\")} {godot_bin}"
  else:
    build_godot_task()
  download_fonts()

  godot_opts = "target=release tools=no"

  cpu = "64"
  build_godot_task()
  when host_os == "macosx":
    cpu = "arm64"
    build_godot_task()

task dist_package, "Build distribution binaries":
  let git_version = static_exec("git describe --tags HEAD").strip
  copy_fonts()
  gen_binding_and_copy_stdlib()
  rm_dir "dist"
  mk_dir "dist"

  when host_os == "windows":
    let release_bin = &"vendor/godot/bin/godot.{target}.opt.{cpu}{exe_ext}"
    let root = &"dist/enu-{git_version}"
    mk_dir root
    exec "strip " & release_bin
    cp_file release_bin, root & "/enu.exe"
    exec &"rcedit {root}/enu.exe --set-icon media/enu_icon.ico"
    exec &"{gen()} write_export_presets --enu_version {git_version}"

    let pck_path = &"{this_dir()}/{root}/enu.pck"
    exec &"{godot_bin} --verbose --path app --export-pack \"win\" " & pck_path

    exec "nimble build -d:release -d:dist"
    cp_file "app/_dlls/enu.dll", root & "/enu.dll"
    find_and_copy_dlls mingw_path(), root, gcc_dlls
    find_and_copy_dlls get_current_compiler_exe().parent_dir, root, nim_dlls
    cp_dir "vmlib", root & "/vmlib"
    exec &"iscc /DVersion={git_version} installer/enu.iss"
    with_dir "dist":
      exec &"zip -r enu-{git_version}-windows-x64.zip enu-{git_version}"

  elif host_os == "macosx":
    proc nim_build(target, cpu: string) =
      rm_dir ".nim_cache"
      let cmd =  &"nim c --cpu:{cpu} -l:'-target {target}-apple-macos11' " &
        &"-t:'-target {target}-apple-macos11' -d:release -d:dist " &
        &"-o:dist/Enu.app/Contents/Frameworks/enu.dylib.{target} src/enu.nim"
      exec cmd

    exec "cp -r installer/Enu.app dist/Enu.app"
    exec "mkdir -p dist/Enu.app/Contents/MacOS"
    exec "mkdir -p dist/Enu.app/Contents/Frameworks"
    exec &"{gen()} write_export_presets --enu_version {git_version}"
    exec &"{gen()} write_info_plist --enu_version {git_version}"

    cpu = "64"
    var release_bin = &"vendor/godot/bin/godot.{target}.opt.{cpu}{exe_ext}"
    exec &"cp {release_bin} dist/Enu.app/Contents/MacOS/Enu.x86_64"
    nim_build "x86_64", "amd64"

    cpu = "arm64"
    release_bin = &"vendor/godot/bin/godot.{target}.opt.{cpu}{exe_ext}"
    exec &"cp {release_bin} dist/Enu.app/Contents/MacOS/Enu.arm64"
    nim_build "arm64", "arm64"

    let config = read_file("dist_config.json").parse_json
    let pck_path = this_dir() & "/dist/Enu.app/Contents/Resources/Enu.pck"

    exec &"{godot_bin} --path app --export-pack \"mac\" " & pck_path

    exec "lipo -create dist/Enu.app/Contents/Frameworks/enu.dylib.x86_64 dist/Enu.app/Contents/Frameworks/enu.dylib.arm64 -output dist/Enu.app/Contents/Frameworks/enu.dylib"
    exec "rm dist/Enu.app/Contents/Frameworks/enu.dylib.*"

    exec "lipo -create dist/Enu.app/Contents/MacOS/Enu.x86_64 dist/Enu.app/Contents/MacOS/Enu.arm64 -output dist/Enu.app/Contents/MacOS/Enu"
    exec "rm dist/Enu.app/Contents/MacOS/Enu.*"

    exec "cp -r vmlib dist/Enu.app/Contents/Resources/vmlib"

    if config["sign"].get_bool:
      let id = config["id"].get_str
      code_sign(id, "dist/Enu.app/Contents/Frameworks/enu.dylib")
      code_sign(id, "dist/Enu.app")

    let package_name = &"enu-{git_version}.dmg"
    if config["package"].get_bool:

      exec &"hdiutil create {package_name} -ov -volname Enu -fs HFS+ -srcfolder dist"
      exec &"mv {package_name} dist"

    if config["notarize"].get_bool:
      let
        username = config["notarize-username"].get_str
        password = config["notarize-password"].get_str

      exec &"xcrun altool --notarize-app --primary-bundle-id 'ca.dsrw.enu'  --username '{username}' --password '{password}' --file dist/{package_name}"
  
  elif host_os == "linux":
    let release_bin = &"vendor/godot/bin/godot.{target}.opt.{cpu}{exe_ext}"
    let root = &"dist/enu-{git_version}"
    mk_dir root & "/bin"
    mk_dir root & "/lib"
    exec "nimble build -d:release -d:dist"
    exec "strip " & release_bin
    cp_file release_bin, root & "/bin/enu"
    cp_file "app/_dlls/enu.so", root & "/lib/enu.so"
    cp_dir "vmlib", root & "/lib/vmlib"
    exec "chmod +x " & root & "/bin/enu"
    exec &"{gen()} write_export_presets --enu_version {git_version}"
    let pck_path = this_dir() & "/" & root & "/enu.pck"
    exec &"{godot_bin} --verbose --path app --export-pack \"x11\" " & pck_path
    with_dir "dist":
      exec &"tar -czvf enu-{git_version}-linux-x64.tar.gz enu-{git_version}"
  
  else:
    quit &"dist is currently unsupported on {host_os}"

task dist, "Build distribution":
  dist_prereqs_task()
  dist_package_task()
