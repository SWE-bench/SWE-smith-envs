#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/django-money__django-money.835c1ab8 /testbed
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
  - ca-certificates=2024.12.31=h06a4308_0
  - ld_impl_linux-64=2.40=h12ee557_0
  - libffi=3.4.4=h6a678d5_1
  - libgcc-ng=11.2.0=h1234567_1
  - libgomp=11.2.0=h1234567_1
  - libstdcxx-ng=11.2.0=h1234567_1
  - libuuid=1.41.5=h5eee18b_0
  - ncurses=6.4=h6a678d5_0
  - openssl=3.0.15=h5eee18b_0
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
      - asgiref==3.8.1
      - babel==2.17.0
      - certifi==2025.1.31
      - coverage==7.6.12
      - django==5.1.6
      - django-stubs==5.1.3
      - django-stubs-ext==5.1.3
      - exceptiongroup==1.2.2
      - faker==12.0.1
      - iniconfig==2.0.0
      - mixer==7.2.2
      - mypy==1.15.0
      - mypy-extensions==1.0.0
      - packaging==24.2
      - pluggy==1.5.0
      - py-moneyed==3.0
      - pytest==8.2.2
      - pytest-cov==6.0.0
      - pytest-django==4.10.0
      - python-dateutil==2.9.0.post0
      - six==1.17.0
      - sqlparse==0.5.3
      - tomli==2.2.1
      - types-pyyaml==6.0.12.20241230
      - typing-extensions==4.12.2
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
pip install -e .[test,exchange]
