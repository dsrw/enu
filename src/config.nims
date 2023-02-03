--define:vm_exec_hooks
--threads:on
--define:nim_preview_hash_ref
--define:nim_type_names
--experimental:dynamic_bind_sym
--mm:orc
--deepcopy:on
--panics:on
--warning:"LockLevel:off"
--warning:"UseBase:off"
--experimental:case_stmt_macros

--define:"chronicles_enabled=on"
--define:"chronicles_log_level=INFO"
--define:"chronicles_disabled_topics=model_citizen"
--define:"chronicles_sinks=textlines[dynamic]"

# --define:zen_trace

if defined(release):
  --define:"chronicles_colors=None"

if project_name() == "enu":
  --app:lib
  --no_main
else:
  --define:no_godot

switch("path", this_dir())
switch("path", this_dir() & "/../generated")
