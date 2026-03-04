# VIM on Ubuntu24.04 Setup

## VIM Install
* sudo apt-get install vim
* vim version 9.1

## Install
* sudo apt install universal-ctags git cmake ack
* sudo apt install python3.12 python3.12-dev python3.12-venv
* sudo apt install build-essential cmake

## VIM Plug Manager
* VundleVim
* https://github.com/VundleVim/Vundle.vim
* git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## VIM .vimrc
* copy .vimrc to your path
* PluginList
* PluginInstall
* PluginClean

* ## Build YCM
* python3 install.py --clangd-completer

## Others
* Disable YCM diag feature
* let g:ycm_show_diagnostics_ui = 0 
