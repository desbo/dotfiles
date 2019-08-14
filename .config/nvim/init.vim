" vundle
set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/vim/plugged')

Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'fenetikm/falcon'

call plug#end()

" visual/interface
syntax on
filetype plugin indent on
set background=dark
colorscheme falcon

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

" buffers
set autochdir
set hidden
let g:buftabs_only_basename=1

" airline
set laststatus=2
set noshowmode
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0

" keys
set pastetoggle=<F4>
nnoremap <silent> <C-H> :bprev<CR>
nnoremap <silent> <C-L> :bnext<CR>
nnoremap <silent> <special> <F2> :NERDTreeToggle<CR>

" html indent config
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
