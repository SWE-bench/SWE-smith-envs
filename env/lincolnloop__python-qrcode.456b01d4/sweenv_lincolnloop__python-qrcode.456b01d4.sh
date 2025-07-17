#!/bin/bash

git clone git@github.com:lincolnloop/python-qrcode.git
git checkout 456b01d41f16e0cfb0f70c687848e276b78c3e8a
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -e .[all]
pip install pytest