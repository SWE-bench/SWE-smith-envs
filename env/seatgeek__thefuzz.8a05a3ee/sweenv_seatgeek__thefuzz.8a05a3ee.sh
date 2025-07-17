#!/bin/bash

git clone git@github.com:seatgeek/thefuzz.git
git checkout 8a05a3ee38cbd00a2d2f4bb31db34693b37a1fdd
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -y
conda activate testbed
pip install -r requirements.txt
pip install -e .
pip install pytest