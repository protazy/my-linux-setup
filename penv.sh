#!/bin/bash

echo Make sure to have the following installed: git zsh oh-my-zsh
echo

[[ "$(command -v git)" ]] || { echo "git is not installed" 1>&2 ; exit 1; }
[[ "$(command -v zsh)" ]] || { echo "zsh is not installed" 1>&2 ; exit 1; }
[[ ! -d "~/.oh-my-zsh" ]] || { echo "oh-my-zsh not installed" 1>&2 ; exit 1; }

rm -rf ~/.penv

git clone git@github.com:protazy/my-linux-setup.git ~/.penv

# vim
cp ~/.penv/editor/.vimrc ~/.vimrc
cp -R ~/.penv/editor/.vim ~/.vim

# zsh and oh-my-zsh
cp ~/.penv/shell/piotr.zsh-theme ~/.oh-my-zsh/themes/
