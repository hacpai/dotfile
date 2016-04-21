#!/bin/bash
# @author

# Install brew
if type brew > /dev/null; then
  echo "Homebrew Exists";
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi;
# Java supported
brew cask install java7;
# Go supported
brew install go;
# vim supported
brew install vim --with-lua --HEAD;
# ag supproted
brew install ag;

# vim pulgin controller - vundle
[[ -d ~/.vim/bundle/Vundle.vim ]] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
# Update vim profile
ln -s ~/dotfile/.vimrc ~/.vimrc
ln -s ~/dotfile/.vim/plugin.vim ~/.vim/plugin.vim
ln -s ~/dotfile/.vim/completion.vim ~/.vim/completion.vim
ln -s ~/dotfile/.vim/keymap.vim ~/.vim/keymap.vim
ln -s ~/dotfile/.vim/language.vim ~/.vim/language.vim
ln -s ~/dotfile/.vim/taglist.vim ~/.vim/taglist.vim
ln -s ~/dotfile/.vim/style.vim ~/.vim/style.vim
# YouCompleteMe supported
if [[ -d ~/.vim/bundle/YouCompleteMe ]]; then
  echo "YouCompleteMe Exists";
else
  git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe;
  cd ~/.vim/bundle/YouCompleteMe;
  git submodule update --init --recursive;
  # for nodejs
  ./install.py --gocode-completer --clang-completer;
fi;
# install vim plugins
vim +PluginInstall! +qall;
