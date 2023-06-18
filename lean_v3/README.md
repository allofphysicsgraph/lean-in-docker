# Lean in Docker

Assuming your have `docker` (or `podman`) and `make` installed, to build this container run
```bash
make
```

Once the container exists, `elan` (The Lean toolchain installer) is available
```bash
$ docker run -it --rm leanonubuntu elan show
```
and
```bash
$ docker run -it --rm leanonubuntu lean --version
```
and
```bash
$ docker run -it --rm leanonubuntu lean -h       
Lean (version 3.51.1, commit cce7990ea86a, Release)
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

Most Lean tutorials rely on a web UI or are written for VSCode. See <https://leanprover.github.io/reference/using_lean.html>,
<https://www.youtube.com/watch?v=p4IrbnPomXg><BR>
Because I plan to use Lean as part of a workflow, loading from files and getting command line output is relevant.

# Similar repos supporting containerization of Lean

* <https://github.com/fcbr/lean-docker> - old, inactive
* <https://github.com/danielbush/lean-remote-containers> - for VScode
* <https://hub.docker.com/r/lean/lean> - old, inactive
* <https://gitlab.com/sestep/lean-docker> draws from <https://raw.githubusercontent.com/Kha/elan/v0.10.2/elan-init.sh>

The repo <https://github.com/Kha/elan> is a fork of <https://github.com/leanprover/elan> which uses

```bash
curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh
```

# Set up Lean

* <https://leanprover.github.io/lean4/doc/setup.html>

# Tutorials for Lean

Lean v3: (as of 2023-06-18, v3 is current but the recommendation is to start using v4)
* <https://leanprover-community.github.io/learn.html> -- directory of resources
* <https://leanprover-community.github.io/lean-web-editor/> -- web-based Lean UI; no tutorial; can load from file
* <https://leanprover-community.github.io/mathematics_in_lean/>
* <https://www.ma.imperial.ac.uk/~buzzard/xena/natural_number_game/> - web-based Lean UI for The Natural Number Game



Unknown version of Lean:
* <https://ahelwer.ca/post/2020-04-05-lean-assignment/>
* <https://www.imo.universite-paris-saclay.fr/~patrick.massot/mil/02_Basics.html>
* <https://agentultra.github.io/lean-for-hackers/>
