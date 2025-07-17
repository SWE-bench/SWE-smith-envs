#!/bin/bash

git clone git@github.com:python/mypy.git
git checkout e93f06ceab81d8ff1f777c7587d04c339cfd5a16
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.12 -yq
conda activate testbed
git submodule update --init mypy/typeshed || true
python -m pip install -r test-requirements.txt
python -m pip install -e .
hash -r
pip install pytest