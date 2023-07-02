FROM ubuntu:23.04

WORKDIR /opt/

RUN apt -y update && apt upgrade
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

ENV PATH "/root/.elan/bin:$PATH"

# As per https://gitlab.com/sestep/lean-docker/-/blob/master/Dockerfile
# and https://leanprover-community.github.io/install/debian_details.html
#RUN python3 -m pip install --user pipx
#RUN pipx install mathlibtools


