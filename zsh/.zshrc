export ZSHDIR=$HOME/.zsh
for f in $ZSHDIR/*.zsh; do
  source "$f"
done
