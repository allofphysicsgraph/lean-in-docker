/-
tested with Lean 4.0

== To run ==
```
docker run -it --rm -v `pwd`:/opt/new_project/project_name/ProjectName --workdir /opt/new_project/project_name/ lean4onubuntu lake lean ProjectName/mathlib_test.v4.lean
```
-/

import Mathlib.Data.Real.Basic

