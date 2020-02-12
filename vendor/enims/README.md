# embeddedNimScript
Using NimScript as embedded scripting language, enabling hot loading among other neat things.

This can call procs with arguments and return values both ways (nim -> nims & nims -> nim).


## Shared state
I've added ``state.nim`` as module to hold state to be shared.
This is to showcase how nimscripts that are compiled and executed during runtime can modify the state of the main application.

## Assumptions
``embeddedNimScript/apiImpl.nim`` assumes the existence of ``../state.nim`` as described above. This is purely optional.
Furthermore, ``embeddedNimScript/enims.nim`` assumes these folders and files to be put alongside the binary:

* **scripts/**
  * **stdlib** - a copy of (or symlink to) Nim's lib directory
  * **api.nim** - the declarations of the procs exposed to the scripts
  * **script1.nims** - the nimscript files, can have any name
  * ...

Also, a copy of the nim compiler needs to sit alongside ``embeddedNimScript/enims.nim`` or alternatively, it can be installed via ``nimble install compiler``.


## Usage

```nim
# Load a script - this will automatically look in the scripts folder mentioned above
# This will also immediately run the script, executing its global scope and defining its procs
let script1 = compileScript("script1.nims")

# After changing the nimscript file, reload it
# This will also immediately run the script, executing its global scope and redefining its procs
script1.reload()

# Call a proc that's defined in the nimscript file
# We need to use those toNode procs to pass the arguments as PNodes
let result = script1.call("subract", toNode(8), toNode(12)])

# The result is wrapped in a PNode so we need to use corresponding proc from compiler/ast to get the value
echo result.getInt() # -4
```

## Watcher

You can do ``compileScript("scriptname.nims", watch = true)`` to start a thread that watches the scriptfile and automatically reloads it should it detect changes. This is why ``threadpool`` is being used. You should be able to easily remove this functionality if you want to compile without ``--threads:on``.


## Extending the API available to the scripts

Just declare new procs in ``scripts/api.nim`` with nothing in the body other than ``builtin``. Example:
```nim
proc add (a, b: int): int = builtin
```

And then implement them in ``embeddedNims/apiImpl.nim`` within the ``exposeScriptApi`` proc. Example:

```nim
expose add:
    # We need to use procs like getInt to retrieve the argument values from VmArgs
    let arg1 = getInt(a, 0)
    let arg2 = getInt(a, 1)
    # Instead of using the return statement we need to use setResult
    setResult(a, arg1 + arg2)
```
And now it can be called from nimscript.

There's no need to include the declarations into the nimscript file manually, this is already being done implicitly.


## Areas of improvement

One thing that's sad is that when you load an erroneous script, the main application terminates. It would be much nicer when the main application would just refuse the script and keep running, ideally printing a error message / stack trace. For example, that would be great for rapid prototyping or for a plugin/mod system where users may want to toy around in more of a sandbox.

Another thing is that currently, you can only easily pass ints, floats, bools and strings between nim and nims, more complex types are tricky. We'd need additional "get type from VmArgs" and ``setResult`` procs (see ``compiler/vmhooks.nim``), as well as "get type from PNode" procs (see ``compiler/ast.nim``) for the more complex types. From what I can tell you need to add custom ``setResult`` and "get type from VmArgs" for each of your tuples and objects you want to be able to pass along.


## Version

This is tested with Nim version 0.18.0
