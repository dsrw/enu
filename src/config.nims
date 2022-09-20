--define:vmExecHooks
--threads:on
--tlsEmulation:off
--threadAnalysis:off
--define:nimPreviewHashRef
--experimental:dynamicBindSym
--experimental:caseStmtMacros
--mm:orc
#--define:nimLeakDetector

if project_name() == "enu":
  --app:lib
  --noMain
else:
  --define:nogodot

switch("warning", "GcUnsafe2:off")
switch("warning", "LockLevel:off")
switch("path", this_dir())
switch("path", this_dir() & "/../generated")
