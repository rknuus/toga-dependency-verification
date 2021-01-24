#!/bin/bash

# Download a wrapper to simplify X11 setup
https://raw.githubusercontent.com/mviereck/x11docker/master/x11docker | sudo bash -s -- --update

docker build -t toga-18.04 -f Dockerfile.18.04 .
x11docker --desktop --user=RETAIN toga-18.04:latest

# now:
# - open an LXTerminal
# - cd ~/toga-dependency-test
# - source venv/bin/activate
# - python3 -m helloworld