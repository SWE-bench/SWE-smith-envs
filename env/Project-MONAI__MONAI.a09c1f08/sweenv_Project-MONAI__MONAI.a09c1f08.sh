#!/bin/bash

git clone git@github.com:Project-MONAI/MONAI.git
git checkout a09c1f08461cec3d2131fde3939ef38c3c4ad5fc
. /opt/miniconda3/bin/activate
conda create -n testbed python=3.12 -yq
conda activate testbed
sed -i '/^git+https:\/\/github.com\/Project-MONAI\//d' requirements-dev.txt
python -m pip install -U -r requirements-dev.txt
python -m pip install -e .
python -c "import monai; monai.config.print_config()"
pip install pytest