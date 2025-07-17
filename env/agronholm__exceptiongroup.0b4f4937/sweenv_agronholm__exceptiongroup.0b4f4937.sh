#!/bin/bash

git clone git@github.com:agronholm/exceptiongroup.git
git checkout 0b4f49378b585a338ae10abd72ec2006c5057d7b
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -e .
pip install pytest