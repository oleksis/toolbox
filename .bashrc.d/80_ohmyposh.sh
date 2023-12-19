# Oh My Posh
mkdir -p ~/.poshthemes
if [ ! -f ~/.poshthemes/microverse-power.omp.json ]; then
    curl https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/microverse-power.omp.json -o ~/.poshthemes/microverse-power.omp.json
fi
eval "$(oh-my-posh init bash --config ~/.poshthemes/microverse-power.omp.json)"
