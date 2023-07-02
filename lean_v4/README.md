# Lean in Docker

Assuming your have `docker` (or, with some editing, `podman`) and `make` installed, to build this container run
```bash
make
```

Once the container exists, `elan` (The Lean toolchain installer) is available
```bash
$ docker run -it --rm lean4onubuntu elan show
leanprover/lean4:stable (default)
Lean (version 4.0.0, commit 7dbfaf9b7519, Release)
```
and
```bash
$ docker run -it --rm lean4onubuntu lean --version
Lean (version 4.0.0, commit 7dbfaf9b7519, Release)
```
and
```bash
$ docker run -it --rm lean4onubuntu lean -h       
Miscellaneous:
  --help -h          display this message
  --version -v       display version number
  --githash          display the git commit hash number used to build this binary
...
```
To run a script, use
```bash
$ docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lean --run hello.v4.lean
Hello, world!
```
where
```bash
$ cat hello.lean
def main : IO Unit := IO.println "Hello, world!"
```
The `--run` is the same as having `#eval main` at the end of a file.


# Tutorials for Lean


Lean v4: (not backwards compatible with v3)
* <https://leanprover.github.io/lean4/doc/setup.html>
* <https://leanprover.github.io/introduction_to_lean/> -- web-based Lean UI
* <https://leanprover.github.io/tutorial/> -- web-based Lean UI for
* <https://adam.math.hhu.de/#/g/hhu-adam/NNG4> -- web-based Lean UI for Natural Number Game
* <https://leanprover.github.io/functional_programming_in_lean/title.html> -- well-written book
* <https://leanprover.github.io/lean4/doc/whatIsLean.html> -- manual
* <https://leanprover.github.io/theorem_proving_in_lean/introduction.html>
* <https://leanprover.github.io/reference/lean_reference.pdf>
* <https://leanprover.github.io/reference/tactics.html>
* <https://leanprover.github.io/theorem_proving_in_lean/interacting_with_lean.html> -- importing files; sections
* <https://leanprover.github.io/logic_and_proof/the_real_numbers.html>


Unknown version of Lean:
* <https://ahelwer.ca/post/2020-04-05-lean-assignment/>
* <https://www.imo.universite-paris-saclay.fr/~patrick.massot/mil/02_Basics.html>
* <https://agentultra.github.io/lean-for-hackers/>
