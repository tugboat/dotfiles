call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()
