#!/usr/bin/env bash

set -e

cd ~/.vim_config

echo 'set runtimepath+=~/.vim_config
source ~/.vim_config/basic.vim
source ~/.vim_config/functions.vim
source ~/.vim_config/plugin.vim
' > ~/.vimrc
