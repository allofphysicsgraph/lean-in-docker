import system.io

open io

def greet (s : string) : io unit :=
  put_str $ "Hello, " ++ s ++ "!\n"

def main : io unit := do
  put_str "What is your name? ",
  name <- get_line,
  greet name
