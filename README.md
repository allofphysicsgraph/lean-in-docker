# Lean in Docker

To build this container,
```bash
make
```

Once the container exists, `elan` (The Lean toolchain installer) is available
```bash
$ docker run -it --rm leanonubuntu elan show
stable (default)
Lean (version 3.50.3, commit 855e5b74e3a5, Release)
```
and
```bash
$ docker run -it --rm leanonubuntu lean --version
Lean (version 3.50.3, commit 855e5b74e3a5, Release)
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



Most Lean tutorials rely on a web UI or are written for VSCode. See <https://leanprover.github.io/reference/using_lean.html><BR> 
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

* <https://leanprover.github.io/introduction_to_lean/> -- web-based Lean UI
* <https://leanprover.github.io/tutorial/> -- web-based Lean UI for version 2 of Lean
* <https://www.ma.imperial.ac.uk/~buzzard/xena/natural_number_game/> - web-based Lean UI for The Natural Number Game
* <https://leanprover-community.github.io/learn.html> -- directory of resources
* <https://leanprover-community.github.io/lean-web-editor/> -- web-based Lean UI; no tutorial; can load from file
* <https://leanprover-community.github.io/mathematics_in_lean/>
* <https://ahelwer.ca/post/2020-04-05-lean-assignment/>
* <https://leanprover.github.io/theorem_proving_in_lean/introduction.html>
* <https://leanprover.github.io/reference/lean_reference.pdf> 
* <https://agentultra.github.io/lean-for-hackers/>
