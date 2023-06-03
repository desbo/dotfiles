set nocompatible
filetype off

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'scalameta/nvim-metals'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'edkolev/tmuxline.vim'
Plug 'arcticicestudio/nord-vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-tree/nvim-web-devicons' 
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

call plug#end()

" visual/interface
colorscheme nord

" disable cursor change
set guicursor=

syntax on
filetype plugin indent on

if !has('gui_running')
  set t_Co=256
endif

set ruler
set number
set nowrap
set scrolloff=3
set nohlsearch
set showcmd
set ttyfast
set backspace=indent,eol,start
set wildmenu
set wildmode=longest,list,full
set ls=0
set cc=80

" text
set ts=2
set ai sw=2
set nosmarttab

set expandtab
set smartindent

" search
set smartcase
set incsearch
set ignorecase

" airline
set laststatus=2
set noshowmode
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0

au BufRead,BufNewFile *.md setlocal textwidth=80

autocmd FileType json syntax match Comment +\/\/.\+$+

let mapleader = "\<Space>"

lua require('init')
