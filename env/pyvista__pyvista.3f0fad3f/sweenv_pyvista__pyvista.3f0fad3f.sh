#!/bin/bash

git clone git@github.com:pyvista/pyvista.git
git checkout 3f0fad3f42d9b491679e6aa50e52d93c1a81c042
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
sudo apt-get update && sudo apt-get install -y ffmpeg libsm6 libxext6 libxrender1
python -m pip install -e '.[dev]'
pip install pytest