--threads:
  on
--mm:
  orc
--tls_emulation:
  off
--deepcopy:
  on

if host_os == "windows":
  --pass_l:
    "-static"
  --define:
    "chronicles_colors=None"
  --define:
    "nim_raw_setjmp"

--warning:
  "LockLevel:off"
--warning:
  "UseBase:off"

--experimental:
  "dynamic_bind_sym"
--experimental:
  "overloadable_enums"

--define:
  "vm_exec_hooks"
--define:
  "nim_preview_hash_ref"
--define:
  "nim_type_names"
--define:
  "chronicles_enabled=on"
--define:
  "chronicles_log_level=INFO"
--define:
  "chronicles_sinks=textlines[dynamic]"

if defined(release):
  --define:
    "chronicles_colors=None"
  --define:
    "chronicles_log_level=INFO"
  --assertions:
    off
  --define:
    "zen_lax_free"

# --passC:"-I/opt/homebrew/include"

--define:usePcreHeader
--passC:"-Ivendor/pcre"

if project_name() == "enu":
  if host_os == "ios":
    --app:staticlib
  else:
    --app:lib
    --passL:"-Lvendor/pcre/.libs -lpcre"
  --no_main
else:
  --define:
    no_godot

switch("path", this_dir())
switch("path", this_dir() & "/../generated")
switch("path", this_dir() & "/../vmlib/enu")

when with_dir(this_dir(), system.file_exists("user_config.nims")):
  include "user_config.nims"
