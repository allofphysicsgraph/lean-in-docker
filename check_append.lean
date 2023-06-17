/-
tested with Lean 3.51.1

What this script does:
print "hello world" using Lean

To run this script, use
lean <name of file>.lean

From https://agentultra.github.io/lean-for-hackers/
-/

#check (++)

/- expected output is

    append : ?M_1 -> ?M_1 -> ?M_1

The `?M_1` is Lean's placeholder for a polymorphic type variable. 
-/
