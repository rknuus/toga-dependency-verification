#!/bin/bash

set -eo pipefail

PROJECT_DIRECTORY="$1"
if [[ "${PROJECT_DIRECTORY}" == "" ]]; then
  echo "Error: no project directory parameter defined."
  exit 1
fi
if ! -d "${PROJECT_DIRECTORY}"; then
  echo "Error: project directory ${PROJECT_DIRECTORY} doesn't exist."
  exit 1
fi

python3 -m venv "${PROJECT_DIRECTORY}/venv"
cd "${PROJECT_DIRECTORY}"
source "${PROJECT_DIRECTORY}/venv/bin/activate"
# wheel is required to prevent error: invalid command 'bdist_wheel'
pip3 install wheel
pip3 install --pre toga
