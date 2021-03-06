#!/bin/sh

/bin/bash --version

echo $PWD

packages=(
  "ctags"
  "direnv"
  "fzf"
  "git"
  "node"
  "ripgrep"
  "vim"
  "z"
  "zsh"
)

casks=(
  "font-mononoki-nerd-font"
)

echo "Install brew packages"
for n in "${packages[@]}"
do
  brew install ${n}
done

echo "Install brew cask packages"
brew tap homebrew/cask-fonts
for i in "${casks[@]}"
do
  brew cask install ${i}
done

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $PWD/vim/vimrc $HOME/.vim/vimrc
ln -s $PWD/vim/gvimrc $HOME/.vim/gvimrc

vim +PlugInstall +qall

exit 0
