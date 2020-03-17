let mapleader=","

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'kovetskiy/sxhkd-vim'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" Basic Settings

set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber

" Don't autocomment new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits make more sense
set splitbelow splitright

" Shortcuts for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Cool way to save root files as root when needed
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
"
" Update binds when sxhkdrc is updated.
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
