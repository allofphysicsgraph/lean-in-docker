/-
tested with Lean 3.51.1

What this script does:
print "hello world" using Lean

To run this script, use
lean --run <name of file>.lean

From https://agentultra.github.io/lean-for-hackers/
-/
import system.io -- `import` is a keyword that includes a Lean module.

open io          -- open a namespace. Adds the declarations in the `io` namespace to this module's global name space.
                 -- if `open io` were omitted we'd have to prefix `put_str` with the namespace: `io.put_str`.

def main : io unit :=    -- The colon can be read as, "has type".
    put_str "Hello, world!\n"
