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
set clipboard=unnamedplus
set smartindent
set mouse=a
set colorcolumn=80

call plug#begin("~/.vim/plugged")

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'cocopon/iceberg.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'elixir-editors/vim-elixir'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'

call plug#end()

colorscheme iceberg
let g:airline#extensions#tabline#enabled = 1
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-tsserver', 'coc-elixir']

let mapleader = " "
noremap <leader>ff :Files<CR>
noremap <leader>w :w<CR>
noremap <leader>q :q<CR>
noremap <leader>wq :wq<CR>
noremap <leader>so :so %<CR>
noremap <leader>e :e $MYVIMRC<CR>
imap jj <Esc>

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

vnoremap <C-t> :split<CR>:ter<CR>
nnoremap <C-t> :split<CR>:ter<CR>

nnoremap <leader>k :bnext<CR>
nnoremap <leader>j :bprevious<CR>
nnoremap <leader>d :bdelete<CR>
nnoremap <leader>t :tabe<CR>
nnoremap <leader>vs :vsp<CR>

:tnoremap <Esc> <C-\><C-n>

nmap <leader>g <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1
