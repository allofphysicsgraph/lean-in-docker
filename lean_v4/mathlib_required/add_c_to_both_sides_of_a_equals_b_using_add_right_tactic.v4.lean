/-
tested with Lean 4.0

-/

import Mathlib.Data.Real.Basic

example (a b c : ℝ) (h : a = b) : a + c = b + c := by
  apply add_right c at h
  exact h

