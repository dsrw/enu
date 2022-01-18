import std / [json, jsonutils, sugar, tables, os]
import pkg / print
import core, models

let state = GameState.active

proc placed_voxels(chunks: ZenTable[Vector3, Chunk]): seq[(Vector3, seq[(Vector3, VoxelInfo)])] =
  result = collect:
    for chunk_id, chunk in chunks:
      let filtered_chunk = collect:
        for loc, info in chunk:
          if info.kind != Computed:
            (loc, info)
      if filtered_chunk.len > 0:
        (chunk_id, filtered_chunk)

proc to_json_hook(self: Color): JsonNode =
  % ("#" & self.to_hex)

proc to_json_hook(self: VoxelInfo): JsonNode =
  %* [self.kind.ord, self.color.to_json]

proc to_json_hook(self: Vector3): JsonNode =
  %[self.x, self.y, self.z]

proc to_json_hook(self: Build): JsonNode =
  %* {
    "id": self.id,
    "start_transform": self.start_transform.to_json,
    "start_color": self.start_color.to_json,
    "chunks": self.chunks.placed_voxels.to_json,
  }

proc to_json_hook(self: Bot): JsonNode =
  %* {
    "id": self.id,
    "start_transform": self.start_transform.to_json
  }

proc save(units: ZenSeq[Unit]) =
  for unit in units:
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

proc load_world*() =
  discard
