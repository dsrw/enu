import std / [json, jsonutils, sugar, tables, os, strutils]
import pkg / print
import core, models, controllers / script_controllers

let state = GameState.active
var load_chunks = false

type WorldInfo = object
  enu_version, format_version: string

proc to_json_hook(self: Color): JsonNode =
  if self == action_colors[eraser]:
    %""
  else:
    %self.to_html_hex

proc from_json_hook(self: var Color, json: JsonNode) =
  let hex = json.get_str
  self = if hex == "":
    action_colors[eraser]
  else:
    hex.parse_html_hex

proc to_json_hook(self: VoxelInfo): JsonNode =
  %* [self.kind.ord, self.color.to_json]

proc from_json_hook(self: var VoxelInfo, json: JsonNode) =
  self.kind = VoxelKind(json[0].get_int)
  self.color = json[1].json_to(Color)

proc to_json_hook(self: Vector3): JsonNode =
  %[self.x, self.y, self.z]

proc from_json_hook(self: var Vector3, json: JsonNode) =
  self.x = json[0].get_float
  self.y = json[1].get_float
  self.z = json[2].get_float

proc to_json_hook(shared_edits: Table[string, Table[Vector3, VoxelInfo]]): JsonNode =
  let edits = collect:
    for id, edits in shared_edits:
      if edits.len > 0:
        let edit = collect:
          for loc, info in edits:
            (loc, info)
        {id: edit}

  result = edits.to_json

proc from_json_hook(self: var Table[Vector3, VoxelInfo], json: JsonNode) =
  assert load_chunks
  for chunks in json:
    for chunk in chunks[1]:
      let location = chunk[0].json_to(Vector3)
      let info = chunk[1].json_to(VoxelInfo)
      self[location] = info

proc from_json_hook(self: var Table[string, Table[Vector3, VoxelInfo]], json: JsonNode) =
  assert not load_chunks
  for id, edits in json:
    for edit in edits:
      if id notin self:
        self[id] = init_table[Vector3, VoxelInfo]()
      let location = edit[0].json_to(Vector3)
      let info = edit[1].json_to(VoxelInfo)
      self[id][location] = info

proc to_json_hook(self: Build): JsonNode =
  %* {
    "id": self.id,
    "start_transform": self.start_transform.to_json,
    "start_color": self.start_color.to_json,
    "edits": self.shared.edits.to_json
  }

proc from_json_hook(self: var Build, json: JsonNode) =
  let color = json["start_color"].json_to(Color)
  self = Build.init(id = json["id"].json_to(string), transform = json["start_transform"].json_to(Transform), color = color)

  if load_chunks:
    var edit = init_table[Vector3, VoxelInfo]()
    edit.from_json(json["chunks"])
    self.shared.edits[self.id] = edit
  else:
    self.shared.edits.from_json(json["edits"])

proc to_json_hook(self: Bot): JsonNode =
  %* {
    "id": self.id,
    "start_transform": self.start_transform.to_json,
    "start_color": self.start_color.to_json,
    "edits": self.shared.edits.to_json
  }

proc from_json_hook(self: var Bot, json: JsonNode) =
  self = Bot.init(id = json["id"].json_to(string), transform = json["start_transform"].json_to(Transform))
  if not load_chunks:
    self.shared.edits.from_json(json["edits"])

proc save(units: ZenSeq[Unit]) =
  for unit in units:
    if not unit.clone_of:
      let data = if unit of Build:
        Build(unit).to_json.pretty
      else:
        Bot(unit).to_json.pretty
      create_dir unit.data_dir
      write_file unit.data_file, data
      unit.units.save

proc save_world*() =
  let world = WorldInfo(enu_version: enu_version, format_version: "v0.9.1")
  write_file state.config.world_dir / "world.json", world.to_json.pretty
  state.units.save

proc load_units(parent: Unit) =
  let opts = JOptions(allow_missing_keys: true)
  let path = if parent:
    parent.data_dir
  else:
    state.config.data_dir
  for dir in walk_dirs(path / "*"):
    let unit_id = dir.split_path.tail
    let data_file = read_file(dir / unit_id & ".json").parse_json
    var unit: Unit
    if unit_id.starts_with("bot_"):
      unit = data_file.json_to(Bot, opts)
    elif unit_id.starts_with("build_"):
      unit = data_file.json_to(Build, opts)
    else:
      quit "Unknown unit type: " & unit_id
    if parent.is_nil:
      state.units.add(unit)
    else:
      parent.units.add(unit)
    if unit of Build:
      Build(unit).reset_bounds
      Build(unit).restore_edits
    load_units(unit)

proc load_world*(controller: ScriptController) =
  let world = read_file(state.config.world_dir / "world.json").parse_json.json_to(WorldInfo)
  load_chunks = world.format_version == "v0.9"

  dont_join = true
  controller.retry_failures = true
  load_units(nil)
  controller.retry_failed_scripts()
  controller.retry_failures = false
  dont_join = false
