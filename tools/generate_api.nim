import godotapigen, os

let
  target = command_line_params()[0]
  api_json = command_line_params()[1]

gen_api($target, $api_json)
