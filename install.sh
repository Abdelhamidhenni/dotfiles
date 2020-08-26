#!/bin/bash

GIT_DIR=$HOME/.dotfiles-git

git clone --bare https://github.com/webflo-dev/dotfiles "$GIT_DIR"

function dotfiles() {
    git --git-dir="$GIT_DIR" --work-tree="$HOME" "$@"
}

dotfiles checkout --force
dotfiles config status.showUntrackedFiles no

files=('README.md' 'install.sh')
for file in "${files[@]}"; do
    dotfiles update-index --assume-unchanged "$file"
    rm $HOME/$file
done
