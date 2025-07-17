#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/tornadoweb__tornado.d5ac65c1 /testbed
cd /testbed
source /opt/miniconda3/bin/activate
cat <<'EOF_59812759871' > swesmith_environment.yml
name: testbed
channels:
  - defaults
dependencies:
  - _libgcc_mutex=0.1=main
  - _openmp_mutex=5.1=1_gnu
  - bzip2=1.0.8=h5eee18b_6
  - ca-certificates=2025.2.25=h06a4308_0
  - ld_impl_linux-64=2.40=h12ee557_0
  - libffi=3.4.4=h6a678d5_1
  - libgcc-ng=11.2.0=h1234567_1
  - libgomp=11.2.0=h1234567_1
  - libstdcxx-ng=11.2.0=h1234567_1
  - libuuid=1.41.5=h5eee18b_0
  - ncurses=6.4=h6a678d5_0
  - openssl=3.0.16=h5eee18b_0
  - pip=25.0=py310h06a4308_0
  - python=3.10.16=he870216_1
  - readline=8.2=h5eee18b_0
  - setuptools=75.8.0=py310h06a4308_0
  - sqlite=3.45.3=h5eee18b_0
  - tk=8.6.14=h39e8969_0
  - tzdata=2025a=h04d1e81_0
  - xz=5.6.4=h5eee18b_1
  - zlib=1.2.13=h5eee18b_1
  - pip:
      - alabaster==0.7.16
      - babel==2.15.0
      - black==24.4.2
      - build==1.2.1
      - cachetools==5.3.3
      - certifi==2024.7.4
      - chardet==5.2.0
      - charset-normalizer==3.3.2
      - click==8.1.7
      - colorama==0.4.6
      - distlib==0.3.8
      - docutils==0.20.1
      - exceptiongroup==1.2.2
      - filelock==3.14.0
      - flake8==7.0.0
      - idna==3.7
      - imagesize==1.4.1
      - iniconfig==2.0.0
      - jinja2==3.1.5
      - markupsafe==2.1.5
      - mccabe==0.7.0
      - mypy==1.10.0
      - mypy-extensions==1.0.0
      - packaging==24.1
      - pathspec==0.12.1
      - pip-tools==7.4.1
      - platformdirs==4.2.2
      - pluggy==1.5.0
      - pycodestyle==2.11.1
      - pyflakes==3.2.0
      - pygments==2.18.0
      - pyproject-api==1.6.1
      - pyproject-hooks==1.1.0
      - pytest==8.3.5
      - requests==2.32.3
      - snowballstemmer==2.2.0
      - sphinx==7.3.7
      - sphinx-rtd-theme==2.0.0
      - sphinxcontrib-applehelp==1.0.8
      - sphinxcontrib-devhelp==1.0.6
      - sphinxcontrib-htmlhelp==2.0.5
      - sphinxcontrib-jquery==4.1
      - sphinxcontrib-jsmath==1.0.1
      - sphinxcontrib-qthelp==1.0.7
      - sphinxcontrib-serializinghtml==1.1.10
      - tomli==2.2.1
      - tox==4.15.1
      - types-pycurl==7.45.3.20240421
      - typing-extensions==4.12.2
      - urllib3==2.2.2
      - virtualenv==20.26.6
      - wheel==0.43.0
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
python -m pip install -e .
