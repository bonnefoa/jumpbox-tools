#!/bin/bash
CDIR=~/.jumpbox-tools

rmlink(){
    rm -f $2
    ln -s $CDIR/$1 $2
}

# zsh
rmlink zsh/env ~/.zshenv
rmlink zsh/rc ~/.zshrc
rmlink zsh/login ~/.zlogin
mkdir -p ~/.oh-my-zsh/custom/themes
rmlink zsh/theme ~/.oh-my-zsh/custom/themes/jumpbox.zsh-theme

# git
rmlink git/gitconfig ~/.gitconfig

# ssh
rmlink ssh/rc ~/.ssh/rc

# tmux
rmlink tmux/conf ~/.tmux.conf
rmlink tmux.multi ~/tmux.multi

# gdb!
rmlink gdbinit ~/.gdbinit

# htop
mkdir -p ~/.config/htop
rmlink htoprc ~/.config/htop/htoprc

# vim
rmlink vim/vimrc ~/.vimrc
