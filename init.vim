set encoding=utf-8
set hidden
set nocompatible
set nolist
set rnu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

let mapleader = ","
noremap <leader>w :w<cr>
noremap <leader>wq :wq<cr>
noremap <leader>q :q<cr>

nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <C-f> :NERDTreeFind<cr>

call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', { 'branch': 'release' } " autocompletion
Plug 'preservim/nerdtree' " filesystem tree
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline' " bottom bar
Plug 'vim-airline/vim-airline-themes' "bottom bar themes
Plug 'whatyouhide/vim-gotham'
Plug 'jiangmiao/auto-pairs'
"Plug 'mhartington/oceanic-next' " colorscheme

" Better syntax
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'elzr/vim-json'
Plug 'mattn/emmet-vim'

call plug#end()

if (has("termguicolors"))
	set termguicolors
endif

syntax enable
colorscheme gotham 

let g:coc_disable_startup_warning = 1
let g:coc_global_extensions = ['coc-tsserver']
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gotham'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
:imap ii <Esc>

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
\ quit | endif

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
