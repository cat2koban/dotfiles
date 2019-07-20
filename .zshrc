export DIRPATH=$HOME/.zsh/

for f in ${DIRPATH}*.zsh; do
    [[ -f ${f} ]] && . ${f} || echo "[LoadError] ${f}"
done
