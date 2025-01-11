/-
tested with Lean 4.0

from <https://lovettsoftware.com/NaturalNumbers/TutorialWorld/Level1.lean.html>
and  <https://adam.math.hhu.de/#/g/hhu-adam/NNG4/world/Tutorial/level/1>

This file proves the following:
"For any natural number `x`, `x` is equal to `x`."

== To run ==
```
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lean reflexivity_x_equals_y.v4.lean
reflexivity_x_equals_y.v4.lean:19:0: error: tactic 'rfl' failed, the left-hand side
  x
is not definitionally equal to the right-hand side
  y
x y : Nat
⊢ x = y
```

== Explanation ==

The `rfl` tactic is not applicable to the goal `x = y` because it is not generally true that `x` and `y` are equal.

-/

example ( x y : Nat ) : x = y := by
rfl

