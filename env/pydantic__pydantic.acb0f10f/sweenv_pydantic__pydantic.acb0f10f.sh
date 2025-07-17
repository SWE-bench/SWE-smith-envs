#!/bin/bash

git clone git@github.com:pydantic/pydantic.git
git checkout acb0f10fda1c78441e052c57b4288bc91431f852
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
sudo apt-get update && sudo apt-get install -y locales pipx
pipx install uv
pipx install pre-commit
make install
pip install pytest