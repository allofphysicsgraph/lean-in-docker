# Lean in Docker


Most Lean tutorials rely on a web UI or are written for VSCode. See <https://leanprover.github.io/reference/using_lean.html>,
<https://www.youtube.com/watch?v=p4IrbnPomXg><BR>
Because I plan to use Lean as part of a workflow, loading from files and getting command line output is relevant.

For the version of Lean you are interested in (v4 or v3), the respective directory has a `Dockerfile` and a `Make` file.

The Dockerfile does not contain Emacs or VSCode

# Similar repos supporting containerization of Lean

* <https://github.com/fcbr/lean-docker> - old, inactive
* <https://github.com/danielbush/lean-remote-containers> - for VScode
* <https://hub.docker.com/r/lean/lean> - old, inactive
* <https://gitlab.com/sestep/lean-docker> draws from <https://raw.githubusercontent.com/Kha/elan/v0.10.2/elan-init.sh>

The repo <https://github.com/Kha/elan> is a fork of <https://github.com/leanprover/elan> which uses

```bash
curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh
```

