/-
print "hello world" using Lean
-/
import system.io
open io
def main : io unit :=
    put_str "Hello, world!\n"
