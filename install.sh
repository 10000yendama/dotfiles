#!/bin/bash

dotfiles=(
.screenrc
)

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for i in ${dotfiles[@]}; do
    ln -sfv $DIR/$i $HOME/$i
done
