const extra_include* {.strdefine.} = ""

when extra_include != "":
  template incl(file):
    include file
  incl extra_include

echo "Done"
