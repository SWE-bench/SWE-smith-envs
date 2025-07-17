#!/bin/bash

git clone git@github.com:conan-io/conan.git
git checkout 86f29e137a10bb6ed140c1a8c05c3099987b13c5
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
sudo apt-get -y update && sudo apt-get install -y build-essential cmake
python -m pip install -r conans/requirements.txt
python -m pip install -r conans/requirements_server.txt
python -m pip install -r conans/requirements_dev.txt
python -m pip install -e .
pip install pytest