FROM ubuntu:23.04

WORKDIR /opt/

RUN apt -y update && apt upgrade
RUN apt install -y curl

# The following doesn't work 
#RUN curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh
# because
# elan: Unable to run interactively. Run with -y to accept defaults, --help for additional options                                                    
# therefore, as per https://stackoverflow.com/a/53605439/1164295 
RUN curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | bash -s -- -y

ENV PATH "/root/.elan/bin:$PATH"

# As per https://gitlab.com/sestep/lean-docker/-/blob/master/Dockerfile
# and https://leanprover-community.github.io/install/debian_details.html
#RUN python3 -m pip install --user pipx
#RUN pipx install mathlibtools


