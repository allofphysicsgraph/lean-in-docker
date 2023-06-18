/-
works with Lean v3.51

from https://stackoverflow.com/a/61968495/1164295
-/

example (a b : nat) (H1 : a = b) : a + 1 = b + 1 :=
by rw H1

/-
the rw tactic in normal Lean always tries (a weak version of) refl after you finish all your rewrites
source: https://stackoverflow.com/a/72760657/1164295

https://www.ma.imperial.ac.uk/~buzzard/xena/formalising-mathematics-2022/Part_C/tactics/rw.html
-/

