# toolbox

🧰 Developers Toolbox

|   |   |
|---|---|
| ![Downloading Monospace](docs/images/ohmyposh-font-monospace.png) | ![Monospace installed](docs/images/ohmyposh-font-monospace-install.png) |
| ![Monospace GitHub](docs/images/ohmyposh-theme-monospace-github.png)  | ![Pythonrc Rich](docs/images/ohmyposh-pythonrc-rich.png)  |

## Video Youtube

[![Developers Toolbox on WSL2](https://img.youtube.com/vi/NsrZIQW-7Pw/mqdefault.jpg)](https://youtu.be/NsrZIQW-7Pw)

## How to use

```bash
# Config git
git config --global user.name "Mona Lisa"
git config --global user.email "YOUR_EMAIL"
# Setting ohmyposh bashrc
ln -s ~/toolbox/.bashrc.d ~/.bashrc.d
## Opcional: Python venv, .pythonrc
## [Python Launcher](https://github.com/brettcannon/python-launcher/blob/main/docs/install.md#installation)
## [Pyenv](https://github.com/pyenv/pyenv/blob/master/COMMANDS.md#pyenv-install)
PYTHON_LAST='3.12.1'
PYENV_VERSION=${PYTHON_LAST}
env PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install ${PYTHON_LAST}
pyenv local ${PYENV_VERSION}
py -m venv venv
source venv/bin/activate
PYTHONSTARTUP=./.pythonrc py
exit()
# which python
py -c "import sys; print(sys.version, sys.executable, sep='\n')"
```

## Codespaces

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/oleksis/toolbox)

When the `post-create-toolbox.sh` command finishes, run `. ./.bashrc` in the [Codespace](https://github.com/features/codespaces/) Terminal.

## Gist

- [Instalar y Configurar Oh-My-Posh V3 y Posh Git](https://gist.github.com/oleksis/8a4f79f23dc9514e87fa252fefcee327#file-oh-my-posh_posh-git-md)
- [A .tmux.conf file for working with tmux](https://gist.github.com/oleksis/d791880ec04180e2dc89dedb171e706b)
- [Setup Python Coding Environment on Windows](https://gist.github.com/oleksis/ae145fade455aae58c47e0295d2cf38d#file-bashrc)
- [Customize the Python REPL on start-up](https://gist.github.com/oleksis/d1cc378d3f8fae62f15627e3bc57de7f#pythonrc-file)
- [Pyenv and Python Launcher](https://gist.github.com/oleksis/7cab1772862df71f73ce22b7515f6af3#pyenv)
- [Pyenv and Tox](https://gist.github.com/oleksis/87b5726e73e62f3e5c8cfb585d7fe4e9#how-to-configure-tox-and-pyenv)
