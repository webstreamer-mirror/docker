FROM conanio/gcc54:1.12.2

LABEL maintainer="Mingyi Zhang <mingyi.z@outlook.com>"

RUN PYTHON2_HOME=/opt/python2 \
    && PYTHON2_VERSION=2.7.15 \
    && PYTHON2_TARBALL=https://www.python.org/ftp/python/${PYTHON2_VERSION}/Python-${PYTHON2_VERSION}.tgz \
    && PIP_VERSION=19.0.2 \
    && PIP_TARBALL=https://files.pythonhosted.org/packages/4c/4d/88bc9413da11702cbbace3ccc51350ae099bb351febae8acc85fec34f9af/pip-${PIP_VERSION}.tar.gz \
    && SETUPTOOLS_VERSION=40.8.0 \
    && SETUPTOOLS_TARBALL=https://files.pythonhosted.org/packages/c2/f7/c7b501b783e5a74cf1768bc174ee4fb0a8a6ee5af6afa92274ff964703e0/setuptools-${SETUPTOOLS_VERSION}.zip \
    && sudo apt-get -qq update \
    && sudo apt-get -qq install unzip \
    && sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash \
    && cd /tmp \
    && wget https://github.com/creationix/nvm/archive/v0.34.0.tar.gz \
    && wget ${PYTHON2_TARBALL} \
    && wget ${SETUPTOOLS_TARBALL} \
    && wget ${PIP_TARBALL} \
    && tar xvf Python-${PYTHON2_VERSION}.tgz \
    && cd  Python-${PYTHON2_VERSION} \
    && ./configure --prefix=${PYTHON2_HOME} \
    && make \
    && sudo make install \
    && cd /tmp \
    && unzip setuptools-${SETUPTOOLS_VERSION}.zip \
    && cd setuptools-${SETUPTOOLS_VERSION} \
    && sudo ${PYTHON2_HOME}/bin/python setup.py install \
    && cd /tmp \
    && tar xvf pip-${PIP_VERSION}.tar.gz \
    && cd pip-${PIP_VERSION} \
    && sudo ${PYTHON2_HOME}/bin/python setup.py install \
    && sudo rm -rf /var/lib/apt/lists/* \
    && sudo rm -rf /tmp/*

