/-
tested with Lean 4.0

from <https://leanprover.github.io/functional_programming_in_lean/getting-to-know/evaluating.html>

Explanation

`#eval` is a command in Lean's interactive environment. It instructs Lean to evaluate the expression that follows it and print the result. Think of it as a way to execute code and see its outcome directly.

`String.append` is a function (or, more precisely, a method) defined within Lean's String namespace. It is designed to take two strings as input and return a new string that is the concatenation (joining together) of those two input strings.

`"Hello, "` is a string literal. This is the first argument being passed to String.append.
`"World!"` is the second argument being passed to String.append.

-/
#eval String.append "Hello, " "World!"
