#!/bin/bash
_chezmoi_vim_install_colorsheme() {
    echo "> Install ${2}"
    curl -fLo ~/.vim/colors/${2}.vim --create-dirs ${1} 2> /dev/null
}

_chezmoi_vim_install_colorshemes() {
    echo '> Install color schemes'
    _chezmoi_vim_install_colorsheme https://raw.githubusercontent.com/tomasr/molokai/refs/heads/master/colors/molokai.vim molokai
    _chezmoi_vim_install_colorsheme https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim jellybeans
    _chezmoi_vim_install_colorsheme https://raw.githubusercontent.com/vim/colorschemes/refs/heads/master/colors/wildcharm.vim wildcharm
}


_chezmoi_vim_install_colorshemes

