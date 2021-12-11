import tables

proc go*[K, V](k: typedesc[K], v: typedesc[V]) =
  var t: Table[K, V]
  for a, v in t:
    echo a
