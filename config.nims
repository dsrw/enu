--path:"vendor/nim"
--define:nimOldCaseObjects
--define:useRealtimeGC
when defined windows:
  --noMain
  --app:lib
