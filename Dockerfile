FROM ubuntu:trusty
RUN apt-get update -q --fix-missing

# Vim
RUN apt-get install -qy vim tmux git
ADD vimrc.after /root/.vimrc.after

# janus
RUN apt-get install -qy rake curl
RUN curl -Lo- https://bit.ly/janus-bootstrap | bash
