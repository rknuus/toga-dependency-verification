# Testing toga dependencies
In order to test [toga](https://github.com/beeware/toga) dependencies on a few Ubuntu versions
provide `Dockerfile`s to setup the test environment. Supported versions are:
- 18.04
- 20.04

The dependencies are based on the
[briefcase-template](https://github.com/beeware/briefcase-template/blob/v0.3/%7B%7B%20cookiecutter.app_name%20%7D%7D/pyproject.toml).

## Usage
1. Download a wrapper to simplify X11 setup of the host and the docker
   container by executing
   `https://raw.githubusercontent.com/mviereck/x11docker/master/x11docker | sudo bash -s -- --update`.
2. Build a docker container:
   `docker build -t toga-18.04 -f Dockerfile.18.04 .`.
3. Start the docker container:
   `x11docker --desktop --user=RETAIN toga-18.04:latest`.
4. Open an LXTerminal.
5. Change into the project directory: `cd ~/toga-dependency-test`.
6. Activate the virtual python environment: `source venv/bin/activate`.
7. Run the tutorial applications, e.g. `python3 -m helloworld` or
   `cd toga/examples/<example> && python3 -m <example>`.
