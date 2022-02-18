proc quit(code = 0, msg = "") =
  exit(code, msg)

proc echo(args: varargs[string, `$`]) =
  echo_console(args.join)
