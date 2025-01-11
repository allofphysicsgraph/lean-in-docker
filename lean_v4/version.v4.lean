/-
tested with Lean 4.0

from <https://proofassistants.stackexchange.com/a/11>
and  <https://github.com/leanprover/lean4-samples/blob/main/HelloWorld/Main.lean>

== To run ==

```
docker run -it --rm -v `pwd`:/scratch --workdir /scratch lean4onubuntu lean version.v4.lean           
"4.15.0"
```

-/
#eval Lean.versionString

