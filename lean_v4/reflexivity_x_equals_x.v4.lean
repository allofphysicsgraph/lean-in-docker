/-
tested with Lean 4.0

from <https://lovettsoftware.com/NaturalNumbers/TutorialWorld/Level1.lean.html>
and  <https://adam.math.hhu.de/#/g/hhu-adam/NNG4/world/Tutorial/level/1>

This file proves the following:
"For any natural number `x`, `x` is equal to `x`."

== To run ==
```
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lean reflexivity_x_equals_x.v4.lean

```

== Explanation ==

First line:
- `example` introduces a new proof, which could be a theorem or simply a property. Lean doesn't require it to be named.
- `(x : Nat)` declares a variable `x` of type `Nat` (natural number). This means our proof will be about a generic natural number. The parentheses indicate that this is a local variable and it is bound by example.
- `: x = x` is the statement (or proposition) we want to prove. It states that the variable `x` is equal to itself. This is a basic property of equality.
- `:= by` is an assignment symbol, but it's slightly different from `:=` used in definitions. It signifies that we will provide a proof of the statement on the left, instead of defining a term. `by` indicates that we are entering a proof mode.

Second line:
`rfl` is a proof tactic (or simply tactic). In Lean, a tactic is an instruction that Lean can use to manipulate the current goal (the thing we want to prove). `rfl` stands for "reflexivity". It is used to solve goals which are an equality statement of the form `x = x`. It is used when the left-hand side and right-hand side of an equation are definitionally equal (they mean exactly the same thing).

The steps in processing are
1. Declaration: Lean registers the `example` declaration, its hypothesis (the variable `x` of type `Nat`), and the proposition `x = x`.
2. Goal: `x = x` is the current goal that needs to be proved in the proof mode.
3. Tactic Application: When the tactic `rfl` is applied, Lean checks if the goal matches the form where reflexivity applies, which is equality of the form `a = a`. Since `x=x` matches this condition, `rfl` automatically proves the goal.

-/

example ( x : Nat ) : x = x := by
rfl

