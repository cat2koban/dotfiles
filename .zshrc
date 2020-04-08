export DIRPATH=$HOME/.zsh.d/

for f in ${DIRPATH}*.zsh; do
    [[ -f ${f} ]] && . ${f} || echo "[LoadError] ${f}"
done
