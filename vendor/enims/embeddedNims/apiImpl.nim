
from compiler/idents import IdentCache
from compiler/vmdef import registerCallback, VmArgs, PCtx
from compiler/modulegraphs import ModuleGraph

from compiler/vm import
    # Getting values from VmArgs
    getInt, getFloat, getString, getBool, getNode,
    # Setting result (return value)
    setResult

from compiler/ast import
    # Types
    PSym, PNode, TNodeKind,
    # Getting values from PNodes
    getInt, getFloat,
    # Creating new PNodes
    newNode, newFloatNode, addSon, newTree

from os import splitFile

# Assume location of shared state type in ../state
import ../state


type
    Script* = ref object
        filename*: string
        moduleName*: string
        mainModule*: PSym
        graph*: ModuleGraph
        context*: PCtx


proc exposeScriptApi* (script: Script) =
    template expose (procName, procBody: untyped) {.dirty.} =
        script.context.registerCallback script.moduleName & "." & astToStr(procName),
            proc (a: VmArgs) =
                procBody

    expose add:
        # We need to use procs like getInt to retrieve the argument values from VmArgs
        # Instead of using the return statement we need to use setResult
        setResult(a,
            getInt(a, 0) +
            getInt(a, 1))

    expose modifyState:
        modifyMe = getString(a, 0)
        echo "`", script.moduleName, "` has changed state.modifyMe to `", modifyMe, "`"
