/-
tested with Lean 4.0

from <https://lovettsoftware.com/NaturalNumbers/TutorialWorld/Level1.lean.html>
and  <https://adam.math.hhu.de/#/g/hhu-adam/NNG4/world/Tutorial/level/1>

This file proves the following:
"For any natural number `x`, `x` is equal to `x`."

== To run ==
```
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lean reflexivity_x_equals_x_with_output_status.v4.lean 
Proof Successful!
```

== Explanation ==

First line:
- `example` introduces a new proof, which could be a theorem or simply a property. Lean doesn't require it to be named.
- `(x : Nat)` declares a variable `x` of type `Nat` (natural number). This means our proof will be about a generic natural number. The parentheses indicate that this is a local variable and it is bound by example.
- `: x = x` is the statement (or proposition) we want to prove. It states that the variable `x` is equal to itself. This is a basic property of equality.
- `:= by` is an assignment symbol, but it's slightly different from `:=` used in definitions. It signifies that we will provide a proof of the statement on the left, instead of defining a term. `by` indicates that we are entering a proof mode.

Second line introduces the hypothesis `h : x = x` by applying reflexivity. This means that, in the current proof context, `h` is a proof of `x = x`.

`exact` is a tactic which expects a term which matches the goal. Here the goal is `x = x` and `h` is of type `x=x`, therefore `exact h` solves the goal by providing a proof term matching it.

The `IO.println` operation is now outside the proof block. Because we are using an evaluation command `#eval`, we can now execute the `IO.println` operation. The proof itself is constructed in the example block, and it is separated from this evaluation operation.

-/

example ( x : Nat ) : x = x := by
  have h : x = x := rfl
  exact h
  
#eval IO.println "Proof Successful!"
