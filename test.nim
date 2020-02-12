
from compiler/ast import getInt

import embeddedNims/enims
import state

from os import sleep


proc main =
    echo "\nInitial shared state:         ", modifyMe

    let
        # Calls the nim proc add (see apiImpl), printing the result of 8 + 12
        script1 = compileScript("script1.nims")

        # Can change state.modifyMe through its update proc
        script2 = compileScript("script2.nims")

    # Calls the nims proc subtract with the arguments 8 and 12, and prints the result
    # We need to use procs like newIntNode and getInt since we're dealing with PNode types here
    echo "From NIM to NIMS and back:    8 - 12 = ", script1.call("subtract",
        [toNode(8), toNode(12)]).getInt()

    script2.call("update")

    # Try hot loading
    when false:
        echo "change state to `quit` in script2.nims to break"
        while true:
            sleep(1000)
            script2.call("update")
            if modifyMe == "quit":
                break

    echo "State after running scripts:  ", modifyMe, "\n"

main()
