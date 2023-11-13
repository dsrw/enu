# --define:"chronicles_log_level=DEBUG"
# --define:"chronicles_disabled_topics=networking,scripting,publishing"
# --define:"metrics"

# --define:"zen_trace"
# --define:"dump_zen_objects"

# Release mode options that may need to be enabled for debugging:
# --define:"chronicles_colors=None"
# --assertions:off
# --define:"zen_lax_free"

# Sequential ids and no timestamps for better log diffs.
# Sequential ids can only be enabled for a single client.
# --define:"zen_sequential_ids"
# --define:"chronicles_timestamps=None"
