#!/bin/bash

git clone git@github.com:pexpect/ptyprocess.git
git checkout 1067dbdaf5cc3ab4786ae355aba7b9512a798734
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e .
pip install pytest