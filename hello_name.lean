/-
tested with Lean 3.51.1

What this script does:
print "hello world" using Lean

To run this script, use
lean --run <name of file>.lean

From https://agentultra.github.io/lean-for-hackers/
-/
import system.io -- `import` is a keyword that includes a Lean module. 

open io          -- open a namespace. Adds the declarations in the `io` namespace 
                 -- to this module's global name space.
                 -- If `open io` were omitted we'd have to prefix `put_str` with the namespace: `io.put_str`.

def greet (s : string) : io unit :=
  put_str $ "Hello, " ++ s ++ "!\n"    -- `++` is "append"

def main : io unit := do          -- The colon can be read as, "has type".
  put_str "What is your name? ",
  name <- get_line,               -- The left arrow in a `do` block tells Lean to 
                                  -- resolve the computation on the right-hand side 
                                  -- of the arrow in our io context and bind its 
                                  -- result to the identifier on the left side of the arrow.
  greet name              -- The action get_line awaits the user to input some 
                          -- characters into a buffer and returns that buffer to us as a string.
