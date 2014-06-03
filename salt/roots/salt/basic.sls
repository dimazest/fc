packges:
  pkg.installed:
    - pkgs:
      - git
      - htop
      - mercurial
      - python3
      - python3-matplotlib
      - python3-numpy
      - python3-scipy
      - python3-zmq
      - tmux
      - unzip
      {% if grains['os'] == 'Fedora' and grains['osrelease'] == '20' %}
      - atlas-sse3-devel
      - blas-devel
      - bzip2-devel
      - czmq-devel
      - freetype-devel
      - gcc-c++
      - hdf5-devel
      - libpng-devel
      - libyaml-devel
      - lzo-devel
      - python3-Cython
      - python3-devel
      - python3-numexpr
      - python3-PyYAML
      - python3-scikit-learn
      - python3-setuptools
      - python3-tables
      {% elif grains['os'] == 'Ubuntu' and grains['osrelease'] >= '13.04' %}
      - cython3
      - gfortran
      - libagg-dev
      - libatlas-base-dev
      - libatlas-dev
      - libblas-dev
      - libbz2-dev
      - libfreetype6-dev
      - libhdf5-dev
      - liblapack-dev
      - liblzo2-dev
      - libpng12-dev
      - libyaml-dev
      - libzmq-dev
      - python3-pip
      {% endif %}
