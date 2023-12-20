#!/usr/bin/env bash

curl -s https://ohmyposh.dev/install.sh | bash -s
curl https://pyenv.run | bash
pre-commit install
# Setting bashrc.d
if [ ! -d ~/.bashrc.d ]; then
    TOOLBOX_DIR="/workspaces/toolbox"
    ln -s $TOOLBOX_DIR/.bashrc.d ~/.bashrc.d
    . $TOOLBOX_DIR/.bashrc
    unset $TOOLBOX_DIR
fi
## [Pyenv](https://github.com/pyenv/pyenv/blob/master/COMMANDS.md#pyenv-install)
if [ ! -d ~/.pyenv/versions/3.12.1 ]; then
    env PYTHON_CONFIGURE_OPTS="--enable-shared" ~/.pyenv/bin/pyenv install ${PYTHON_LAST}
fi
