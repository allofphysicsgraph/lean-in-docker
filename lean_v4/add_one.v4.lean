/-
tested with Lean 4.0

from <https://leanprover.github.io/functional_programming_in_lean/introduction.html>

How to execute:
```
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lean add_one_unknown_declaration_main.v4.lean
8
```

== Explanation ==

The first line defines a function called `add1` that takes a natural number `n` as input and returns the result of adding 1 to `n`.

The steps are
1. Process the definition: register the function definition of `add1`.
2. Evaluate the expression: `add1 7`. This will involve:
   a. Substituting `n` with 7 in the function body, resulting in the expression `7 + 1`.
   b. Performing the addition, yielding the value 8.
3. Print the result: The `#eval` command prints the result of the evaluation to the console.

Breaking down the first line into more details,

- `def add1` declares a new definition named `add1`. 
- `(n : Nat)` specifies the input parameter to the function `add1`.
  - `n` is the name of the parameter.
  - `: Nat` specifies that the type natural numbers (0, 1, 2, ...). 
- `: Nat` specifies the return type of the function `add1`. 
- `:=:` This is the definition symbol. It assigns the value on the right to the name on the left.
- `n + 1` is the actual expression that computes the return value. It adds 1 to the input value n.

-/

def add1 (n : Nat) : Nat := n + 1

#eval add1 7
