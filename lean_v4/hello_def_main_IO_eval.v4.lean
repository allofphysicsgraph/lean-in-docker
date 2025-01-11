/-
tested with Lean 4.0

from <https://github.com/leanprover/lean4-samples/blob/main/HelloWorld/Main.lean>

== To run ==
```
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lean hello_def_main_IO_eval.v4.lean
Hello, world!
```

== Explanation == 
First line
- `def main` declares a new definition named `main`. In Lean `def` is used to define a new term that can be a function, a constant, etc.
- `: IO Unit` specifies the type of the definition main. `IO` is the type for computations that can perform input/output operations (like printing to the console). `Unit` is the type that has only one value (often represented as ()). `IO Unit` signifies that `main` is an IO computation that produces no meaningful return value. Similar to a `void` function in other programming languages.
- `:=` is the definition symbol, assigning the value on the right to the name on the left.
- `IO.println "Hello, world!"` is the value being defined for `main`.
- `IO.println` is a function in Lean's `IO` library. It takes a string as input and performs the side effect of printing that string to the console.
- `"Hello, world!"` is the string literal that will be printed.

Second line:
- `#eval` is a command in Lean's interactive environment that instructs Lean to evaluate the expression that follows it.
- `main` is the expression that Lean is instructed to evaluate. In this context, main is the previously defined function. Because it is of type `IO Unit`, Lean will execute the `IO` action represented by the definition.
-/
def main : IO Unit := IO.println "Hello, world!"

#eval main
