# .bashrc

if [ -d $HOME/.bashrc.d ]; then
    for rc in $HOME/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

unset rc

# Allow / Disallow global pip install
export PIP_REQUIRE_VIRTUALENV=false

# Use friendly names to the virtual environments
# `py -m venv .venv --prompt=my_project`
