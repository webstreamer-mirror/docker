FROM webstreamer/gcc54

LABEL maintainer="Mingyi Zhang <mingyi.z@outlooke.com>"

ENV PYENV_ROOT=/opt/pyenv \
    PATH=/opt/pyenv/shims:${PATH}

RUN sudo mkdir $PYENV_ROOT \
    && sudo chown -R ci:1001 /opt/pyenv \
    && sudo wget --no-check-certificate -O /tmp/pyenv-installer https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer \
    && sudo chmod +x /tmp/pyenv-installer \
    && sudo /tmp/pyenv-installer \
    && sudo rm /tmp/pyenv-installer \
    && update-alternatives --install /usr/bin/pyenv pyenv /opt/pyenv/bin/pyenv 100 \
    && PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 2.7.15 \
    && pyenv global 2.7.15 \
    && find /opt/pyenv -iname __pycache__ -print0 | xargs -0 rm -rf\
    && update-alternatives --install /usr/bin/python python /opt/pyenv/shims/python 100 \
    && update-alternatives --install /usr/bin/pip pip /opt/pyenv/shims/pip 100 
       


RUN printf 'eval "$(pyenv init -)"\n' >> ~/.bashrc \
    && printf 'eval "$(pyenv virtualenv-init -)"\n' >> ~/.bashrc

