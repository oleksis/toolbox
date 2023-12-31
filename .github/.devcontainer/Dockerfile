# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/devcontainers/python:3.12-bullseye
LABEL maintainer="Oleksis Fraga <oleksis.fraga at gmail.com>" \
    org.opencontainers.image.source=https://github.com/oleksis/toolbox \
    org.opencontainers.image.description="🧰 Developers Toolbox" \
    org.opencontainers.image.licenses=MIT
ARG PYTHON_LAST=3.12.1
ENV PYTHON_LAST=$PYTHON_LAST
ENV PYENV_VERSION=$PYTHON_LAST

SHELL [ "/usr/bin/env", "bash", "-c" ]

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y git build-essential \
    && rm -rf /var/lib/apt/lists/*
# Oh-My-Posh and Pyenv
RUN curl -s https://ohmyposh.dev/install.sh | bash -s \
    && curl https://pyenv.run | bash \
    && if [[ ! -d ~/.pyenv/versions/3.12.1 ]]; then env PYTHON_CONFIGURE_OPTS=--enable-shared ~/.pyenv/bin/pyenv install ${PYTHON_LAST}; fi
# COPY requirements-dev.txt /usr/local/requirements-dev.txt
COPY --chmod=0755 .github/.devcontainer/post-create-toolbox.sh /usr/local/post-create-toolbox.sh
