--threads:"on"
--mm:"orc"
--tls_emulation:"off"
if host_os == "windows":
  --pass_l:"-static"

--warning:"LockLevel:off"
--warning:"UseBase:off"

--experimental:"dynamic_bind_sym"
--experimental:"overloadable_enums"

--define:"vm_exec_hooks"
--define:"nim_preview_hash_ref"
--define:"nim_type_names"
--define:"chronicles_enabled=on"
--define:"chronicles_log_level=INFO"
--define:"chronicles_disabled_topics=model_citizen"
--define:"chronicles_sinks=textlines[dynamic]"

if defined(release):
  --define:"chronicles_colors=None"

if project_name() == "enu":
  --app:lib
  --no_main
else:
  --define:no_godot

switch("path", this_dir())
switch("path", this_dir() & "/../generated")
switch("path", this_dir() & "/../vmlib/enu")

when with_dir(this_dir(), system.file_exists("user_config.nims")):
  include "user_config.nims"
