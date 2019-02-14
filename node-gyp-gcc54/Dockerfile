FROM conanio/gcc54:1.12.2

LABEL maintainer="Mingyi Zhang <mingyi.z@outlook.com>"

RUN pyenv install 2.7.15 \    
    && sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash \
    && bash -c "source /home/conan/.nvm/nvm.sh && nvm install 10.15.1 && nvm use 10.15.1" \
    && node --version 
    