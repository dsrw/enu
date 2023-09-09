import nimibook

var book = init_book_with_toc:
  section "Introduction", "intro":
    entry "Goals", "intro/goals"
    entry "Demos", "intro/demos"
    entry "Install or Build", "intro/building"

  section "Basics", "basics":
    entry "Controls and Usage", "basics/controls"
    entry "Programming", "basics/programming"
    entry "Config", "basics/config"

  section "Coding Enu", "coding":
    entry "Concepts", "coding/concepts"
    entry "Commands", "coding/commands"
    entry "Shorthand Commands", "coding/shorthand"
    entry "Random Numbers", "coding/random_numbers"

  section "Action Loops", "action_loops":
    entry "Actions", "action_loops/actions"
    entry "Loops", "action_loops/loops"
    entry "Arrows", "action_loops/arrows"
    entry "Child Loops", "action_loops/child_loops"
    entry "More About Action Loops", "action_loops/more"

  section "Examples", "examples":
    entry "Shapes", "example/shapes"

  entry "TODO", "todo"

nimibook_cli(book)
