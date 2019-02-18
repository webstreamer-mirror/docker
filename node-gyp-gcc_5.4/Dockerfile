FROM webstreamer/gcc54:0.1

LABEL maintainer="Mingyi Zhang <mingyi.z@outlooke.com>"


RUN groupadd 1001 -g 1001 \
    && groupadd 1000 -g 1000 \
    && groupadd 2000 -g 2000 \
    && groupadd 999 -g 999 \
    && useradd -ms /bin/bash ci -g 1001 -G 1000,2000,999 \
    && printf "ci:ci" | chpasswd \
    && adduser ci sudo \
    && printf "ci ALL= NOPASSWD: ALL\\n" >> /etc/sudoers \
    && wget --no-check-certificate --quiet -O /tmp/pyenv-installer https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer \
    && chmod +x /tmp/pyenv-installer \
    && /tmp/pyenv-installer \
    && rm /tmp/pyenv-installer \
    && update-alternatives --install /usr/bin/pyenv pyenv /opt/pyenv/bin/pyenv 100 \
    && PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 2.7.15 \
    && pyenv global 2.7.15 \
    && pip install -q --upgrade --no-cache-dir pip \
    && pip install -q --no-cache-dir ci ci-package-tools \
    && chown -R ci:1001 /opt/pyenv \
    && find /opt/pyenv -iname __pycache__ -print0 | xargs -0 rm -rf \
    && update-alternatives --install /usr/bin/python python /opt/pyenv/shims/python 100 \
    && update-alternatives --install /usr/bin/pip pip /opt/pyenv/shims/pip 100 
	

USER ci
WORKDIR /home/ci

RUN mkdir -p /home/ci/.ci \
    && printf 'eval "$(pyenv init -)"\n' >> ~/.bashrc \
    && printf 'eval "$(pyenv virtualenv-init -)"\n' >> ~/.bashrc
