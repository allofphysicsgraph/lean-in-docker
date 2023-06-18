# Lean in Docker

Assuming your have `docker` (or `podman`) and `make` installed, to build this container run
```bash
make
```

Once the container exists, `elan` (The Lean toolchain installer) is available
```bash
$ docker run -it --rm leanonubuntu elan show
leanprover/lean4:stable (default)
Lean (version 4.0.0, commit 7dbfaf9b7519, Release)
```
and
```bash
$ docker run -it --rm leanonubuntu lean --version
```
and
```bash
$ docker run -it --rm leanonubuntu lean -h       
Miscellaneous:
  --help -h          display this message
  --version -v       display version number
  --githash          display the git commit hash number used to build this binary
...
```
To run a script, use
```bash
$ docker run -it --rm -v `pwd`:/scratch --workdir /scratch leanonubuntu lean --run hello.lean
Hello, world!
```
where
```bash
$ cat hello.lean
import system.io
open io
def main : io unit :=
    put_str "Hello, world!\n"
```
The `--run` is the same as having `#eval main` at the end of a file.

You can see how long each phase took using
```bash
$ docker run -it --rm -v `pwd`:/scratch --workdir /scratch leanonubuntu lean --profile --run hello.lean
parsing took 0.0624ms
elaboration of main took 0.587ms
type checking of main took 0.0148ms
compilation of main took 1.64ms
decl post-processing of main took 0.966ms
Hello, world!
main execution took 0ms
```


# Set up Lean

* <https://leanprover.github.io/lean4/doc/setup.html>

# Tutorials for Lean


Lean v4: (not backwards compatible with v3)
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
