# Lean in Docker

To build this container,
```bash
make
```

Once the container exists,
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

# Similar repos

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

* <https://leanprover.github.io/tutorial/> -- includes interactive web-based Lean UI
* <https://leanprover-community.github.io/lean-web-editor/> -- interactive web-based Lean UI; no tutorial; can load from file
* <https://ahelwer.ca/post/2020-04-05-lean-assignment/>
* <https://leanprover.github.io/theorem_proving_in_lean/introduction.html>
* <https://leanprover.github.io/reference/lean_reference.pdf> 

