import os

switch("path", this_dir() / "../../src")
switch("path", this_dir() / "../../vmlib")
switch("path", this_dir())
--define:vmExecHooks

--define:useRealtimeGC
--define:vmExecHooks
# --threads:on
# --tlsEmulation:off
# --threadAnalysis:off
--define:nimPreviewHashRef
