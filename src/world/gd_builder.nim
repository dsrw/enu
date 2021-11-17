import godotapi / [spatial, resource_loader, packed_scene]
import godot
import std / [tables, math, sets, sugar, sequtils, hashes, os, monotimes, macros]
import core, globals, world / [terrain]
import engine/contexts
export contexts

var max_grid_index = 0

type
  Timer = tuple[until: DateTime, callback: proc()]

proc create_builder*(point: Vector3, parent: Node, script = "", is_clone = false): Node {.discardable.}

iterator child_objects(self: Node): Node =
  let children = self.get_node("OwnedNodes").get_children
  for v in children:
    let child = v.as_object(Node)
    yield child

gdobj GDBuilder of Spatial:
  var
    terrain: Terrain
    # If we delete a voxel while it's queued up to be drawn by godot voxel,
    # the voxel gets drawn anyway, and the polys hang around until they
    # move out of draw distance. Wait a bit before clearing. FIXME.
    timers: seq[Timer]
    unit*: Unit

  proc init*(unit: Unit) =
    self.unit = unit

  method ready() =
    self.terrain = self.find_node("Terrain") as Terrain
    if not self.unit.parent.is_nil:
      # TODO
      discard
      # self.terrain.root_terrain = self.root_builder.terrain
    assert self.terrain != nil

    self.bind_signals self.terrain,
      w"block_selected last_block_deleted terrain_block_added terrain_block_removed"

    self.bind_signals self, w"highlight deselect deleted"
    # TODO
    # self.bind_signals w"reload pause reload_all"

    # if self.saved_blocks.len > 0 or self.saved_holes.len > 0:
    #   self.restore_blocks()


  method physics_process(delta: float64) =
    let previous = self.rotation()
    defer:
      self.terrain.rotational_change = self.rotation() - previous

    if self.timers.len > 0:
      var timers = self.timers
      self.timers = @[]
      for timer in timers:
        if timer.until < now():
          timer.callback()
        else:
          self.timers.add timer
      return

    if not self.built:
      self.build()
      self.built = true
    if not self.paused:
      try:
        if self.engine.running:
          self.advance(delta)
      except VMQuit as e:
        self.engine.error(e)


  # proc find_root: Node =
  #   var target: Node = self
  #   while target.get_parent.name == "OwnedNodes":
  #     target = target.get_parent.get_parent
  #   result = target

  method on_block_selected =
    var t = self.root_builder
    if t.is_nil:
      t = self
    state.open_file = t.script
    state.open_engine = t.engine
    state.editing = true

  method on_selected() =
    var t = self.find_root().as(Builder)
    if t.is_nil:
      t = self
    state.open_file = t.script
    state.open_engine = t.engine
    state.editing = true

  proc set_timer(duration: TimeInterval, callback: proc()) =
    self.timers.add (now() + duration, callback)

  proc destroy_children() =
    for child in self.child_objects:
      child.trigger("deleted")

  method reload() =
    let duration = if self.engine.running: 0.5.seconds else: 0.seconds
    self.destroy_children()
    self.set_timer duration, proc() =
      self.reset(clear = true, set_vars = false)
      self.paused = false
      self.load_script()

  method on_reload() =
    if state.open_file == self.script:
      self.reload()

  method on_reload_all() =
    self.reload()

  method on_pause*() =
    self.paused = not self.paused

  method on_last_block_deleted(offset: int) =
    if offset == self.script_index:
      # nothing to clear
      self.on_deleted(clear = false)

  method on_terrain_block_added(loc: Vector3, index: int) =
    if loc in self.holes:
      self.holes[loc] = index
      self.save_blocks()
    elif not self.root_builder.is_nil:
      let loc = loc + self.translation
      if loc in self.root_builder.holes:
        self.root_builder.holes[loc] = index
        self.root_builder.save_blocks()
    else:
      self.save_blocks()
    save_scene()

  method on_terrain_block_removed(offset: int, loc: Vector3, index: int, keep: bool) =
    if not keep:
      if not self.root_builder.is_nil:
        let loc = loc + self.translation
        self.root_builder.kept_holes[loc] = -1
        self.root_builder.holes[loc] = -1
        self.root_builder.save_blocks()
      else:
        self.holes[loc] = -1
        self.save_blocks()
    save_scene()

  method on_highlight(find_root: bool) =
    if find_root and not self.root_builder.is_nil:
      self.root_builder.trigger("highlight", false)
    else:
      self.terrain.highlighted = true
      for child in self.child_objects:
        child.trigger("highlight", false)

  method on_deselect(find_root: bool) =
    if find_root and not self.root_builder.is_nil:
      self.root_builder.trigger("deselect", false)
    else:
      self.terrain.highlighted = false
      for child in self.child_objects:
        child.trigger("deselect", false)

proc create_builder*(point: Vector3, parent: Node, script = "", is_clone = false): Node {.discardable.} =
  let
    proto = load("res://components/Builder.tscn") as PackedScene
    b = proto.instance() as Builder
    is_clone = parent != data_node
  assert not b.is_nil
  b.script_ctx.is_clone = is_clone
  b.paused = true
  b.setup(point)
  b.initial_index = action_index
  if is_clone:
    b.script_ctx.script = script
  parent.add_child(b)
  b.owner = parent
  save_scene()
  result = b
