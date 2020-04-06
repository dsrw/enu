import godot, ../godotapi / [area],
       globals, bot

gdobj SelectionArea of Area:
  var
    bot*: NimBot

  method ready*() =
    self.bot = self.get_node("..") as NimBot
