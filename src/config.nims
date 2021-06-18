--define:useRealtimeGC
--define:vmExecHooks
--noMain
--app:lib
--threads:on
--tlsEmulation:off
--threadAnalysis:off

switch("path", this_dir())
switch("path", this_dir() & "/../generated")
