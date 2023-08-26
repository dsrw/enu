## Install

Download from https://github.com/dsrw/enu/releases. The Windows version isn't signed, and
UAC will warn that it's untrusted. This will be fixed in a future release.

The Linux version hasn't been tested particularly well, but it works for me under Ubuntu 20.04. Please report any issues.

The world format will change in a future release. Worlds created in 0.1 won't be supported in future versions.

# Build and Run

```console
$ nimble prereqs
$ nimble build
$ nimble import_assets
$ nimble start
```

## Notes

Enu requires a custom Godot version, which lives in `vendor/godot`. This will be fetched
and built as part of `nimble prereqs`.

See https://docs.godotengine.org/en/3.2/development/compiling/index.html
