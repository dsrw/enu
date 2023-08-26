import nimibook

var book = init_book_with_toc:
  section "Introduction", "intro.nim":
    entry "Goals", "intro/goals.nim"
    entry "Demos", "intro/demos.nim"
    entry "Install or Build", "intro/building.nim"

  section "Basics", "basics.nim":
    entry "Controls and Usage", "basics/controls.nim"
    entry "Programming", "basics/programming.nim"
    entry "Config", "basics/config.nim"

  section "Coding Enu", "coding.nim":
    entry "Concepts", "coding/concepts.nim"
    entry "Commands", "coding/commands.nim"
    entry "Shorthand Commands", "coding/shorthand.nim"
    entry "Random Numbers", "coding/random_numbers.nim"

  section "Action Loops", "action_loops.nim":
    entry "Actions", "action_loops/actions.nim"
    entry "Loops", "action_loops/loops.nim"
    entry "Arrows", "action_loops/arrows.nim"
    entry "Child Loops", "action_loops/child_loops.nim"
    entry "More About Action Loops", "action_loops/more.nim"

  section "Examples", "examples.nim":
    entry "Shapes", "example/shapes.nim"

  entry "TODO", "todo.nim"

nimibook_cli(book)
