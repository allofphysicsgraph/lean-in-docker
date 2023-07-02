/-
tested with Lean 4.0

Use the `#check` command to check whether the Lean core library has the notation for the type you want to use.
-/

-- the Unicode "N" isn't supported in command-line Lean
#check ℕ
-- the Unicode notation can be supported by adding `import Mathlib.Init.Data.Nat.Notation` to the top of this script
-- as per https://leanprover.zulipchat.com/#narrow/stream/377024-ATOMS-Lab/topic/docker.20container.20for.20Lean/near/371617041


-- instead of "\Nat", in command-line Lean use
#check Nat
