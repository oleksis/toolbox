# Oh My Posh
mkdir -p $HOME/.poshthemes
if [ ! -f $HOME/.poshthemes/microverse-power.omp.json ]; then
    curl https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/microverse-power.omp.json -o $HOME/.poshthemes/microverse-power.omp.json
fi
eval "$(oh-my-posh init bash --config $HOME/.poshthemes/microverse-power.omp.json)"

if [ ! -d $HOME/.local/share/fonts/monaspicear-nerd-font ]; then
    oh-my-posh font install Monaspace
fi

if [ ! -d $HOME/.local/share/fonts/firacode-nerd-font ]; then
    oh-my-posh font install FiraCode
fi
