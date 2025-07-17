#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/marshmallow-code__apispec.8b421526 /testbed
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
  - python=3.10.16=he870216_1
  - readline=8.2=h5eee18b_0
  - setuptools=75.1.0=py310h06a4308_0
  - sqlite=3.45.3=h5eee18b_0
  - tk=8.6.14=h39e8969_0
  - tzdata=2024b=h04d1e81_0
  - wheel=0.44.0=py310h06a4308_0
  - xz=5.4.6=h5eee18b_1
  - zlib=1.2.13=h5eee18b_1
  - pip:
      - attrs==24.3.0
      - cachetools==5.5.0
      - certifi==2024.12.14
      - cfgv==3.4.0
      - chardet==5.2.0
      - charset-normalizer==3.4.1
      - colorama==0.4.6
      - distlib==0.3.9
      - exceptiongroup==1.2.2
      - filelock==3.16.1
      - identify==2.6.5
      - idna==3.10
      - iniconfig==2.0.0
      - jsonschema==4.23.0
      - jsonschema-path==0.3.3
      - jsonschema-specifications==2023.12.1
      - lazy-object-proxy==1.10.0
      - marshmallow==3.24.1
      - nodeenv==1.9.1
      - openapi-schema-validator==0.6.2
      - openapi-spec-validator==0.7.1
      - packaging==24.2
      - pathable==0.4.3
      - platformdirs==4.3.6
      - pluggy==1.5.0
      - pre-commit==4.0.1
      - pyproject-api==1.8.0
      - pytest==8.3.4
      - pyyaml==6.0.2
      - referencing==0.35.1
      - requests==2.32.3
      - rfc3339-validator==0.1.4
      - rpds-py==0.22.3
      - six==1.17.0
      - tomli==2.2.1
      - tox==4.23.2
      - typing-extensions==4.12.2
      - urllib3==2.3.0
      - virtualenv==20.28.1
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
pip install -e .[dev]
