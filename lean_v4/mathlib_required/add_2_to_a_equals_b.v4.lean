/-
Lean v4

== Status ==
Currently getting the error message
```
filename.v4.lean:10:0: error: no goals to be solved 
```

== To run ==
```
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lean add_2_to_a_equals_b.v4.lean
```
== Explanation ==

-/

import Mathlib.Data.Real.Basic

variable (a b : Real)

example : (a = b) -> (a + 2 = b + 2) := by
  intro h
  rw [h]
  exact rfl 

