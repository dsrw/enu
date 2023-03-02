--threads:on
--mm:orc
--panics:on

--warning:"LockLevel:off"
--warning:"UseBase:off"

--experimental:"dynamic_bind_sym"

--define:"vm_exec_hooks"
--define:"nim_preview_hash_ref"
--define:"nim_type_names"
--define:"chronicles_enabled=on"
--define:"chronicles_log_level=INFO"
--define:"chronicles_disabled_topics=model_citizen,scripting"
--define:"chronicles_sinks=textlines[dynamic]"
# --define:"chronicles_timestamps=None" # disable timestamps for better diffs
# --define:"zen_trace"

if defined(release):
  --define:"chronicles_colors=None"

if project_name() == "enu":
  --app:lib
  --no_main
else:
  --define:no_godot

switch("path", this_dir())
switch("path", this_dir() & "/../generated")
