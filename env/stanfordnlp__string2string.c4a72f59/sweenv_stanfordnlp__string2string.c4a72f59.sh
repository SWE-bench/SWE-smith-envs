#!/bin/bash

git clone git@github.com:stanfordnlp/string2string.git
git checkout c4a72f59aafe8db42c4015709078064535dc4191
#!/bin/bash
# Try to find conda installation
if [ -f "/root/miniconda3/bin/activate" ]; then
    . /root/miniconda3/bin/activate
elif [ -f "/opt/miniconda3/bin/activate" ]; then
    . /opt/miniconda3/bin/activate
elif [ -f "$HOME/miniconda3/bin/activate" ]; then
    . $HOME/miniconda3/bin/activate
else
    echo "Error: Could not find conda installation"
    exit 1
fi
conda create -n testbed python=3.10 -yq
conda activate testbed
pip install -r docs/requirements.txt
pip install -e .
pip install pytest
pip uninstall fasttext -y
conda install -c conda-forge fasttext -y
pip uninstall numpy -y
conda install 'numpy>=1.22.4' -y
