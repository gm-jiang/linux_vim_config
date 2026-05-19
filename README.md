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


## zsh and oh-my-zsh with p10k theme

```
sudo apt-get install zsh
```

```
install oh-my-zsh  refer: https://github.com/ohmyzsh/ohmyzsh (gitee for no VPN)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

```
set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc
```

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
设置~/.zshrc，把zsh-autosuggestions添加到 Oh My Zsh 要加载的插件列表中

# ubuntu 显示乱码问题
打开Terminal 点击preference ->选中描述文件，更改字体即可

# auto-suggestion issues with tmux
export TERM=xterm-256color
```
