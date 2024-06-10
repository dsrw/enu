type Path2 = distinct string
type SqlQuery2 = distinct string

proc `$`*(self: Path2): string {.borrow.}
proc `$`*(self: SqlQuery2): string {.borrow.}

let a = Path2("path")
let b = SqlQuery2("sql query")

echo a, b