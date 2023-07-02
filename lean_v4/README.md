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
To run a script that has no dependencies on mathlib or other imports, use
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

## Create a new project
Running scripts using `lean` with no dependencies has limited use. Usually in Lean we create packages for modularity and so other people can use our results.

(The following is based on <https://leanprover.github.io/lean4/doc/setup.html>.)

Naming: Lake = Lean's Make = Lean 4 build system and package manager; source code at <https://github.com/leanprover/lake>

```bash
mkdir temp_for_lean_project
cd temp_for_lean_project
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lake init foo
```
For background, see <https://github.com/leanprover/lake#creating-and-building-a-package>

Initializing a project creates a git repo containing the files
* `.gitignore`
* `Foo.lean`
* `Main.lean`
* `lakefile.lean`
Here `lakefile.lean` contains
```
import Lake
open Lake DSL

package foo {
  -- add package configuration options here
}

lean_lib Foo {
  -- add library configuration options here
}

@[defaultTarget]
lean_exe foo {
  root := `Main
}
```

Next, build the source code into a binary
```
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lake build
    Building Foo
    Compiling Foo
    Building Main
    Compiling Main
    Linking foo
```
The binary can't be executed on the host, so you have to execute inside the container using
```bash
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu build/bin/foo
    Hello, world!
```
The default package doesn't require mathlib, so the next project uses the `math` template.

## Including Mathlib in a project
To leverage mathlib, we create a project that contains a configuration file that tells Lean where to find Mathlib.

```bash
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lake init foo math
```
which produces
* `.gitignore`
* `Foo.lean`
* `lakefile.lean`
This time the `lakefile.lean` contains
```
import Lake
open Lake DSL

package foo {
  -- add any package configuration options here
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

@[defaultTarget]
lean_lib Foo {
  -- add any library configuration options here
}
```

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
