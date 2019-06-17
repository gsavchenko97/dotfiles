"---------------------------------------
" PLUGINS
"---------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plugin 'valloric/youcompleteme'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'a.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'octol/vim-cpp-enhanced-highlight'

" color schemes
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required

"-------------------------------
" VIM SETTINGS
" ------------------------------

set number
set expandtab
set tabstop=2

set hlsearch
set incsearch

set wrap
set encoding=utf8           " UTF-8 by default
set linebreak
set mouse=a
syntax on
set ruler
set showmatch
set title
set hidden
set t_Co=256
set smartindent
set autoindent
set shiftwidth=2
set smarttab
set et
set cin
set pastetoggle=
set number
set iminsert=0
set infercase
set wcm=<TAB>
set colorcolumn=100

"" Подсвечивать табы и пробелы в конце строки
set list " включить подсветку
set listchars=tab:.\ ,trail:- " установить символы, которыми будет осуществляться подсветка

" YCM
let g:ycm_global_ycm_extra_conf = '/home/gsavchenko/.vim/.ycm_extra_conf.py'
map <C-]> :YcmCompleter GoToImprecise<CR>

" Vim colorscheme
"let g:molokai_original = 1
colorscheme gruvbox
set background=dark

" Vim airline
let g:airline_theme = 'simple'

"""""""""""""
"" F-* keys "
"""""""""""""

" Paste mode
set pastetoggle=<F3>

" Sort lines
vmap <F4> :sort i<CR>

" Run C (C++)
nmap <F5> :!./%.o<CR>
imap <F5> <Esc>:!./%.o<CR>
vmap <F5> <Esc>:!./%.o<CR>

" Compile C
nmap <F6> :!gcc -std=c99 -o "%.o" -lm  %<CR>
imap <F6> <Esc>:!gcc -std=c99 -o "%.o" -lm %<CR>
vmap <F6> <Esc>:!gcc -std=c99 -o "%.o" -lm %<CR>

" Compile C++
nmap <F7> :!g++ -std=c++14 -o "%.o" %<CR>
imap <F7> <Esc>:!g++ -std=c++14 -o "%.o" %<CR>
vmap <F7> <Esc>:!g++ -std=c++14 -o "%.o" %<CR>

nmap <F8> :TagbarToggle<CR>

" NERDTree setup
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
