/-
from https://stackoverflow.com/a/41957766/1164295
-/

example (a b : nat) (H1 : a = b) : a + 1 = b + 1 :=
eq.subst H1 rfl

