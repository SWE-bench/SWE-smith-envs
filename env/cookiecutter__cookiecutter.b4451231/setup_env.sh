#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/cookiecutter__cookiecutter.b4451231 /testbed
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
  - wheel=0.45.1=py310h06a4308_0
  - xz=5.6.4=h5eee18b_1
  - zlib=1.2.13=h5eee18b_1
  - pip:
      - annotated-types==0.7.0
      - arrow==1.3.0
      - authlib==1.5.1
      - binaryornot==0.4.4
      - cachetools==5.5.2
      - certifi==2025.1.31
      - cffi==1.17.1
      - cfgv==3.4.0
      - chardet==5.2.0
      - charset-normalizer==3.4.1
      - click==8.1.8
      - colorama==0.4.6
      - coverage==7.6.12
      - cryptography==44.0.2
      - distlib==0.3.9
      - dparse==0.6.4
      - exceptiongroup==1.2.2
      - filelock==3.16.1
      - freezegun==1.5.1
      - identify==2.6.8
      - idna==3.10
      - iniconfig==2.0.0
      - jinja2==3.1.6
      - joblib==1.4.2
      - markdown-it-py==3.0.0
      - markupsafe==3.0.2
      - marshmallow==3.26.1
      - mdurl==0.1.2
      - nltk==3.9.1
      - nodeenv==1.9.1
      - packaging==24.2
      - platformdirs==4.3.6
      - pluggy==1.5.0
      - pre-commit==4.1.0
      - psutil==6.1.1
      - pycparser==2.22
      - pydantic==2.9.2
      - pydantic-core==2.23.4
      - pygments==2.19.1
      - pyproject-api==1.9.0
      - pytest==8.3.5
      - pytest-cov==6.0.0
      - pytest-mock==3.14.0
      - python-dateutil==2.9.0.post0
      - python-slugify==8.0.4
      - pyyaml==6.0.2
      - regex==2024.11.6
      - requests==2.32.3
      - rich==13.9.4
      - ruamel-yaml==0.18.10
      - ruamel-yaml-clib==0.2.12
      - safety==3.3.1
      - safety-schemas==0.0.11
      - shellingham==1.5.4
      - six==1.17.0
      - text-unidecode==1.3
      - tomli==2.2.1
      - tox==4.24.1
      - tqdm==4.67.1
      - typer==0.15.2
      - types-python-dateutil==2.9.0.20241206
      - typing-extensions==4.12.2
      - urllib3==2.3.0
      - virtualenv==20.29.2
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
python -m pip install -e .
