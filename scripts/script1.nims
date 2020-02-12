
let args = [8, 12]
echo "From NIMS to NIM and back:    ", args[0], " + ", args[1], " = ",
    add(args[0], args[1])

proc subtract* (a, b: int): int =
    return a - b
