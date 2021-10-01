syntax on
set nu
set rnu
set background=dark
set termguicolors
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab
set nolist
filetype plugin indent on
set nowrap
set textwidth=80
set scrolloff=5
set backspace=indent,eol,start
set laststatus=2
set showmode
set showcmd
set encoding=UTF-8
set nobackup
set nowritebackup
set updatetime=200
set shortmess+=c
set hidden

call plug#begin("~/.vim/plugged")

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'elixir-editors/vim-elixir'

call plug#end()

colorscheme moonfly
let g:airline#extensions#tabline#enabled = 1
let g:moonflyCursorColor = 1
let g:moonflyItalics = 0
let g:moonflyNormalFloat = 1
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-tsserver', 'coc-elixir']

let mapleader = " "
noremap <leader>ff :Files<CR>
noremap <leader>w :w<CR>
noremap <leader>so :so %<CR>
imap jj <Esc>
