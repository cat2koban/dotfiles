source $HOME/.env.sh

export ZSHDIR=$HOME/rc
for f in $ZSHDIR/*.zsh; do
  source "$f"
done
