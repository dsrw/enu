import std / [json, jsonutils, sugar, tables, os, strutils]
import pkg / print
import core, models

let state = GameState.active

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

proc to_json_hook(chunks: ZenTable[Vector3, Chunk]): JsonNode =
  let filtered = collect:
    for chunk_id, chunk in chunks:
      let filtered_chunk = collect:
        for loc, info in chunk:
          if info.kind != Computed:
            (loc, info)
      if filtered_chunk.len > 0:
        (chunk_id, filtered_chunk)
  result = filtered.to_json

proc from_json_hook(self: var ZenTable[Vector3, Chunk], json: JsonNode) =
  self = ZenTable[Vector3, Chunk].init
  for jchunks in json:
    let chunk = Chunk.init
    let chunk_id = jchunks[0].json_to(Vector3)

    for jchunk in jchunks[1]:
      let location = jchunk[0].json_to(Vector3)
      let info = jchunk[1].json_to(VoxelInfo)
      chunk[location] = info

    self[chunk_id] = chunk

proc to_json_hook(self: Build): JsonNode =
  %* {
    "id": self.id,
    "start_transform": self.start_transform.to_json,
    "start_color": self.start_color.to_json,
    "chunks": self.chunks.to_json,
  }

proc from_json_hook(self: var Build, json: JsonNode) =
  let color = json["start_color"].json_to(Color)
  self = Build.init(transform = json["start_transform"].json_to(Transform), color = color)

  self.id.from_json(json["id"])
  self.chunks.from_json(json["chunks"])

proc to_json_hook(self: Bot): JsonNode =
  %* {
    "id": self.id,
    "start_transform": self.start_transform.to_json
  }

proc from_json_hook(self: var Bot, json: JsonNode) =
  self = Bot.init(transform = json["start_transform"].json_to(Transform))
  self.id = json["id"].json_to(string)

proc ready(self: Unit) =
  if self.script_file.file_exists:
    self.code.value = self.script_file.read_file

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
  let world = %*{
    "enu_version": enu_version,
    "format_version": "v0.9"
  }

  write_file state.config.world_dir / "world.json", world.pretty
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
    unit.ready()
    load_units(unit)

proc load_world*() =
  dont_join = true
  load_units(nil)
  dont_join = false
