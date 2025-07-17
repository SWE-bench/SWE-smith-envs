#!/bin/bash

git clone git@github.com:Cog-Creators/Red-DiscordBot.git
git checkout 33e0eac741955ce5b7e89d9b8f2f2712727af770
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r tools/dev-requirements.txt
pip install -e .
pip install pytest