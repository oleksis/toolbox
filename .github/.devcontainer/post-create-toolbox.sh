#!/usr/bin/env bash

pre-commit install
# Setting bashrc.d
if [ ! -d $HOME/.bashrc.d ]; then
    TOOLBOX_DIR="/workspaces/toolbox"
    ln -s $TOOLBOX_DIR/.bashrc.d $HOME/.bashrc.d
    . $TOOLBOX_DIR/.bashrc
    unset $TOOLBOX_DIR
fi
