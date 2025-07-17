#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/python__mypy.e93f06ce /testbed
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
  - expat=2.6.4=h6a678d5_0
  - ld_impl_linux-64=2.40=h12ee557_0
  - libffi=3.4.4=h6a678d5_1
  - libgcc-ng=11.2.0=h1234567_1
  - libgomp=11.2.0=h1234567_1
  - libstdcxx-ng=11.2.0=h1234567_1
  - libuuid=1.41.5=h5eee18b_0
  - ncurses=6.4=h6a678d5_0
  - openssl=3.0.15=h5eee18b_0
  - pip=25.0=py312h06a4308_0
  - python=3.12.9=h5148396_0
  - readline=8.2=h5eee18b_0
  - setuptools=75.8.0=py312h06a4308_0
  - sqlite=3.45.3=h5eee18b_0
  - tk=8.6.14=h39e8969_0
  - tzdata=2025a=h04d1e81_0
  - wheel=0.45.1=py312h06a4308_0
  - xz=5.6.4=h5eee18b_1
  - zlib=1.2.13=h5eee18b_1
  - pip:
      - attrs==25.1.0
      - cfgv==3.4.0
      - coverage==7.6.10
      - distlib==0.3.9
      - execnet==2.1.1
      - filelock==3.17.0
      - identify==2.6.6
      - iniconfig==2.0.0
      - lxml==5.3.0
      - mypy-extensions==1.0.0
      - nodeenv==1.9.1
      - packaging==24.2
      - pathspec==0.12.1
      - platformdirs==4.3.6
      - pluggy==1.5.0
      - pre-commit==4.1.0
      - psutil==6.1.1
      - pytest==8.3.4
      - pytest-cov==6.0.0
      - pytest-xdist==3.6.1
      - pyyaml==6.0.2
      - tomli==2.2.1
      - types-psutil==6.1.0.20241221
      - types-setuptools==75.8.0.20250110
      - typing-extensions==4.12.2
      - virtualenv==20.29.1
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
git submodule update --init mypy/typeshed || true
python -m pip install -r test-requirements.txt
python -m pip install -e .
hash -r
