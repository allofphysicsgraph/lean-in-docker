#FROM ubuntu:23.04

# https://docs.docker.com/engine/reference/builder/#from
# https://github.com/phusion/baseimage-docker
FROM phusion/baseimage:focal-1.1.0

WORKDIR /opt/

# https://leanprover-community.github.io/install/debian_details.html

RUN apt -y update && apt -y upgrade
RUN apt install -y curl git

# `git` is needed by `lake`

# The following doesn't work 
#RUN curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh
# because
# elan: Unable to run interactively. Run with -y to accept defaults, --help for additional options                                                    
# therefore, as per https://stackoverflow.com/a/53605439/1164295 
RUN curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf |\
       bash -s -- --default-toolchain leanprover/lean4:stable -y
# -s = --silent;     Do not show progress meter or error messages. Makes Curl mute.
# -S = --show-error; When used with -s, --silent, it makes curl show an error message if it fails.
# -f = --fail;       (HTTP) Fail fast with no output at all on server errors. This is useful to enable scripts and users to better deal with failed attempts.

# if "nightly" is desired, replace
# --default-toolchain leanprover/lean4:stable
# with
# --default-toolchain leanprover/lean4:nightly
# as per https://leanprover-community.github.io/archive/stream/270676-lean4/topic/elan.20update.html

ENV PATH="/root/.elan/bin:$PATH"

# As per https://gitlab.com/sestep/lean-docker/-/blob/master/Dockerfile
#RUN python3 -m pip install --user pipx
#RUN pipx install mathlibtools


# as per https://github.com/leanprover-community/mathlib4/wiki/Using-mathlib4-as-a-dependency
RUN mkdir /opt/new_project
WORKDIR /opt/new_project
RUN lake +leanprover-community/mathlib4:lean-toolchain new project_name math
# The purpose of lake new is to generate the initial project files based on a template
# inclusion of `math` omits `Main.lean` and declares Mathlib as a dependency in your lakefile.toml

WORKDIR /opt/new_project/project_name

# Next, read `lakefile.toml` in the current directory (/opt/new_project/project_name).
# Then identify the declared dependencies (in this case, Mathlib) and download and install these dependencies into your project.
RUN lake exe cache get

#RUN lake build ProjectName

# cache the build of Mathlib
RUN echo "import Mathlib.Data.Real.Basic" > ProjectName/mathlib_test.v4.lean
RUN lake lean ProjectName/mathlib_test.v4.lean 

