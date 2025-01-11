/-
tested with Lean 4.0

from <https://lovettsoftware.com/NaturalNumbers/TutorialWorld/Level1.lean.html>
and  <https://adam.math.hhu.de/#/g/hhu-adam/NNG4/world/Tutorial/level/1>

== To run ==
```
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lean reflexivity_xyz_equals_xyz.v4
```

== Explanation ==

`(x y : Nat)` declares local variables `x` and `y` of type `Nat` (natural numbers). These variables are explicitly bound by `example`. They are only available within the scope of `example`.

`x*y + z = x*y + z` is the proposition we want to prove. Note that `z` is not declared explicitly in the `example`. Lean interprets `z` as a free variable; `z` refers to a global variable that could be defined anywhere.

Even though we didn't write `∀ (z : α)` for some type `α` when we used `z`, Lean understands this statement as: "For any term `z` of some unknown type, the goal `x * y + z = x * y + z` holds.

Lean applies `rfl` to the goal after implicit universal quantification of the free variable. So what Lean is proving is actually `∀ (z : Nat), x*y + z = x*y + z` which can be proven by the `rfl` tactic.

-/

example ( x y : Nat ) : x*y+z = x*y+z := by
rfl

