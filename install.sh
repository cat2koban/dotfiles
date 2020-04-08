#!/bin/sh

DOTPATH=$(pwd)/

for f in ${DOTPATH}.[a-z]*
do
	if [[ $f =~ .git ]] ;
	then
		continue
	fi

    ln -snfv "$f" "$HOME"
done

exec $SHELL
