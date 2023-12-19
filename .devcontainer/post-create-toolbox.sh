#!/bin/bash

curl -s https://ohmyposh.dev/install.sh | bash -s
curl https://pyenv.run | bash
pre-commit install
# Setting bashrc.d
TOOLBOX_DIR="/workspaces/toolbox"
ln -s $TOOLBOX_DIR/.bashrc.d ~/.bashrc.d
. $TOOLBOX_DIR/.bashrc
unset $TOOLBOX_DIR
## [Pyenv](https://github.com/pyenv/pyenv/blob/master/COMMANDS.md#pyenv-install)
env PYTHON_CONFIGURE_OPTS="--enable-shared" ~/.pyenv/bin/pyenv install ${PYTHON_LAST}
