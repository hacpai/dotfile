#!/bin/bash
# @author hacpai

# install brew
if type brew > /dev/null; then
  echo "Homebrew Exists";
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi;
# curl supported
brew install curl
brew link curl --force
# ssh supported
brew tap homebrew/dupes
brew install openssh
# Java supported
brew tap caskroom/versions
brew cask install java7;
# Go supported
brew install go;
# vim supported
brew install vim --with-lua;
# ag supproted
brew install ag;
# z supported
brew install z;
# zsh supported
brew install zsh;
# iterm2 supported
brew cask install iterm2;

# vim pulgin controller - vundle
[[ -d ~/.vim/bundle/Vundle.vim ]] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
# Add vim profile
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

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
# zsh-autosuggestions supported
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions;
# zsh-syntax-highlighting supported
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
# Add .zshrc
ln -s ~/dotfile/.zshrc ~/.zshrc;
# Add oh-my-zsh theme
ln -s ~/dotfile/.oh-my-zsh/custom/themes/roamlog.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/roamlog.zsh-theme;

# Add .bashrc
ln -s ~/dotfile/.bashrc ~/.bashrc
# Add git-prompt.sh
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh;
