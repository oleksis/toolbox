# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/devcontainers/python:3.12-bullseye
LABEL maintainer="Oleksis Fraga <oleksis.fraga at gmail.com>" \
    org.opencontainers.image.source=https://github.com/oleksis/toolbox \
    org.opencontainers.image.description="🧩 Developers Toolbox" \
    org.opencontainers.image.licenses=MIT
ARG PYTHON_LAST=3.12.1
ENV PYTHON_LAST=$PYTHON_LAST
ENV PYENV_VERSION=$PYTHON_LAST

# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get install -y build-essential \
#     && rm -rf /var/lib/apt/lists/*

# COPY requirements-dev.txt /usr/local/requirements-dev.txt
COPY --chmod=0755 .devcontainer/post-create-toolbox.sh /usr/local/post-create-toolbox.sh
