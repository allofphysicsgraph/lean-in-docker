/-
tested with Lean 4.0

Status: `apply_right` isn't a valid tactic. See
* <https://proofassistants.stackexchange.com/questions/2696/what-am-i-doing-wrong-when-proving-the-add-right-cancel-theorem>
* <https://adam.math.hhu.de/#/g/leanprover-community/NNG4/world/AdvAddition/level/1>

I think Gemini halucinated `apply_right`

== To run ==
```
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lean add_c_to_both_sides_of_a_equals_b_using_add_right_tactic.v4.lean
```
== Explanation ==
`import Mathlib.Data.Real.Basic` imports the definitions and theorems about real numbers (ℝ) from the Mathlib library. Without this, Lean wouldn't know about the type ℝ or the properties of real numbers.

`example` the keyword to start a nameless proof.
`(a b c : ℝ)` Declares three variables a, b, and c all of type ℝ (real numbers).
`(h : a = b)` Declares a hypothesis named h, which is the statement a = b. This is what we will be using to prove the main goal.
`: a + c = b + c:` is the proposition (goal) we want to prove: If `a = b`, then `a + c = b + c`.
`:= by:` initiates proof mode, where we'll use tactics to construct the proof.

`apply add_right c` uses the `add_right` theorem from `mathlib`. This theorem allows us to add the same term `c` to the right side of the equality of `a = b`.
`at h`: This modifier applies the theorem to the existing hypothesis `h`. This transforms `h` from `a = b` to `a + c = b + c`. 

`exact h`: This tactic checks if the hypothesis h is exactly the same as our goal, and if so, completes the proof.
-/

import Mathlib.Data.Real.Basic

example (a b c : Real) (h : a = b) : a + c = b + c := by
  apply add_right c at h
  exact h

