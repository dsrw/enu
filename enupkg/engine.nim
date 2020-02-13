import ../vendor/enims/embeddedNims/enims

proc exec_script*(script, entrypoint: string) =
  let vm = compile_script(script)
  vm.call(entrypoint)   
  