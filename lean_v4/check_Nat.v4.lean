/-
tested with Lean 4.0

Use the `#check` command to check whether the Lean core library has the notation for the type you want to use.
-/

-- the Unicode "N" isn't supported in command-line Lean
#check ℕ

-- instead of "\Nat", in command-line Lean use
#check Nat
