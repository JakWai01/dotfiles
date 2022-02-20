syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch 

set colorcolumn=80

call plug#begin('~/.vim/plugged')

Plug 'vim-utils/vim-man'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'jremmen/vim-ripgrep'
Plug 'dracula/vim',{'as':'dracula'}

call plug#end()

set background=dark
colorscheme dracula
 
let mapleader = " "

nnoremap <leader>w :wincmd v<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>e :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>s :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leadeR>gf :YcmCompleter FixIt<CR>

set laststatus=2
set matchpairs+=<:>
set ignorecase
