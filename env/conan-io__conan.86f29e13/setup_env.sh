#!/bin/bash
set -euxo pipefail
git clone -o origin https://github.com/swesmith/conan-io__conan.86f29e13 /testbed
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
      - beautifulsoup4==4.13.3
      - bottle==0.13.2
      - certifi==2025.1.31
      - charset-normalizer==3.4.1
      - colorama==0.4.6
      - coverage==7.6.12
      - distro==1.8.0
      - docker==7.1.0
      - exceptiongroup==1.2.2
      - execnet==2.1.1
      - fasteners==0.19
      - idna==3.10
      - iniconfig==2.0.0
      - jinja2==3.1.5
      - markupsafe==3.0.2
      - mock==1.3.0
      - packaging==24.2
      - parameterized==0.9.0
      - patch-ng==1.18.1
      - pbr==6.1.1
      - pluggy==1.5.0
      - pluginbase==1.0.1
      - pyjwt==2.10.1
      - pytest==7.4.4
      - pytest-cov==6.0.0
      - pytest-xdist==3.6.1
      - python-dateutil==2.9.0.post0
      - pyyaml==6.0.2
      - requests==2.32.3
      - six==1.17.0
      - soupsieve==2.6
      - tomli==2.2.1
      - typing-extensions==4.12.2
      - urllib3==2.0.7
      - waitress==3.0.2
      - webob==1.8.9
      - webtest==3.0.4
prefix: /opt/miniconda3/envs/testbed

EOF_59812759871
conda env create --file swesmith_environment.yml
conda activate testbed && conda install python=3.10 -y
rm swesmith_environment.yml
conda activate testbed
echo "Current environment: $CONDA_DEFAULT_ENV"
python -m pip install -e .
