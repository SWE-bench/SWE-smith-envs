#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/pyupio__safety.7654596b /testbed
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
  - ca-certificates=2024.11.26=h06a4308_0
  - ld_impl_linux-64=2.40=h12ee557_0
  - libffi=3.4.4=h6a678d5_1
  - libgcc-ng=11.2.0=h1234567_1
  - libgomp=11.2.0=h1234567_1
  - libstdcxx-ng=11.2.0=h1234567_1
  - libuuid=1.41.5=h5eee18b_0
  - ncurses=6.4=h6a678d5_0
  - openssl=3.0.15=h5eee18b_0
  - pip=24.2=py310h06a4308_0
  - python=3.10.15=he870216_1
  - readline=8.2=h5eee18b_0
  - setuptools=75.1.0=py310h06a4308_0
  - sqlite=3.45.3=h5eee18b_0
  - tk=8.6.14=h39e8969_0
  - tzdata=2024b=h04d1e81_0
  - wheel=0.44.0=py310h06a4308_0
  - xz=5.4.6=h5eee18b_1
  - zlib=1.2.13=h5eee18b_1
  - pip:
      - annotated-types==0.7.0
      - authlib==1.3.2
      - certifi==2024.8.30
      - cffi==1.17.1
      - charset-normalizer==3.4.0
      - click==8.1.7
      - coverage==7.6.8
      - cryptography==44.0.0
      - dparse==0.6.4
      - exceptiongroup==1.2.2
      - filelock==3.12.4
      - idna==3.10
      - iniconfig==2.0.0
      - jinja2==3.1.4
      - markdown-it-py==3.0.0
      - markupsafe==3.0.2
      - marshmallow==3.23.1
      - mdurl==0.1.2
      - packaging==23.0
      - pluggy==1.5.0
      - psutil==6.0.0
      - pycparser==2.22
      - pydantic==2.9.2
      - pydantic-core==2.23.4
      - pygments==2.18.0
      - pytest==7.4.4
      - pytest-cov==4.1.0
      - requests==2.32.3
      - rich==13.9.4
      - ruamel-yaml==0.18.6
      - ruamel-yaml-clib==0.2.12
      - safety-schemas==0.0.10
      - shellingham==1.5.4
      - tomli==2.2.1
      - typer==0.15.1
      - typing-extensions==4.12.2
      - urllib3==2.2.3
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
python -m pip install -e .
