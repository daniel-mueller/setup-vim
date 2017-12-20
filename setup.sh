#!/bin/bash 

#Install Vundle + Plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc.dist ~/.vimrc
vim -E -c :PluginInstall -c q

#Setup YouCompleteMe
#Your user needs to be in the sudoers file
sudo dnf install automake gcc gcc-c++ kernel-devel cmake python-devel python3-devel
cp ycm_extra_conf.py.dist ~/.vim/bundle/YouCompleteMe/ycm_extra_conf.py 
python ~/.vim/bundle/YouCompleteMe/install.py --clang-completer





