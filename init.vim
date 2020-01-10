"---------------------------------------
" VIM SETTINGS
" --------------------------------------

set nocompatible                " no vi compatible
set number                      " line numbers
set expandtab                   " in paste mode change tab on spaces and >> <<
set tabstop=4                   " spaces count for displaying tab
set smarttab                    " tabs in the beginnig of the line (enabled by default)
set autoindent                  " copy indents from previous line (enadled by default)
set smartindent                 " more smart autoindent
set shiftwidth=4                " count of spaces for >> and <<
set t_Co=256                    " colors. usefull for some terminals
set background=dark             " background style
set mouse=a                     " supporting mouse
set colorcolumn=100             " bound of the line
set list                        " show trailing spaces and tabs
set listchars=tab:.\ ,trail:-   " symbols for list
set hlsearch                    " enabled by default
set incsearch                   " enabled by default
set infercase                   " change case for search
set encoding=utf8               " utf-8 by default
set wrap
set linebreak
set ruler                       " enabled by default
set showmatch
set hidden                      " something for buffers
set cin                         " c syntax highlighting
set completeopt-=preview        " turn off completion preview


"---------------------------------------
" PLUGINS
"---------------------------------------

filetype off                  " required
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")

Plugin 'VundleVim/Vundle.vim'

" THE NERDTREE
" The NERDTree is a file system explorer for the Vim editor.
" Usage: Ctrl + n
Plugin 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

" YOUCOMPLETEME
" YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for Vim.
" Usage:
"   GoToDefinition - Ctrl + ]
"   GoToDeclaration - Ctrl + [
Plugin 'valloric/youcompleteme'

" GRUVBOX
" Designed as a bright theme with pastel 'retro groove' colors and light/dark
" mode switching in the way of solarized.
Plugin 'morhetz/gruvbox'

" VIM-AIRLINE
" Lean & mean status/tabline for vim that's light as air.
Plugin 'vim-airline/vim-airline'

" VIM-AIRLINE-THEMES
" This is the official theme repository for vim-airline.
Plugin 'vim-airline/vim-airline-themes'

" A
" A few of quick commands to swtich between source files and header files quickly.
" Usage: :A
Plugin 'vim-scripts/a.vim'

" FUGITIVE.VIM
" A git wrapper
" Usage: :G (git st), :Gdiff (git diff)
Plugin 'tpope/vim-fugitive'

" AUTO PAIRS
" Insert or delete brackets, parens, quotes in pair.
Plugin 'jiangmiao/auto-pairs'

" ENHANCED HIGHLIGHT
" Additional vim syntax highlighting for C++.
Plugin 'octol/vim-cpp-enhanced-highlight'

" TAGBAR
" Tagbar is a Vim plugin that provides an easy way to browse the tags of the current file
" and get an overview of its structure.
" Usage: F8
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
filetype plugin indent on    " required


"---------------------------------------
" PLUGINS SETTINGS
"---------------------------------------

" NERDTREE Settings
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" YOUCOMPLETEME Settings
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/ycm_extra_conf.py"

" COLORSCHEME Settings
colorscheme gruvbox

" VIM AIRLINE Settings
let g:airline_theme = 'simple'


"---------------------------------------
" PLUGINS KEY MAPPINGS
"---------------------------------------

map <C-n> :NERDTreeToggle<CR>

map <C-[> :YcmCompleter GoToDeclaration<CR>
map <C-]> :YcmCompleter GoToDefinition<CR>

map <C-z> :AV <CR>

nmap <F8> :TagbarToggle<CR>


"---------------------------------------
" COMMON KEY MAPPINGS
"---------------------------------------

" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line. with
" line wrapping on, this can cause the cursor to actually skip a few lines on the screen because
" it's moving from line N to line N+1 in the file. I want this to act more visually -- I want `down'
" to mean the next line on the screen
nmap j gj
nmap k gk

" Super fast window movement shortcuts
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" Turn off arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Paste mode
set pastetoggle=<F3>

" Sort lines
vmap <F4> :sort i<CR>

" Run C (C++)
nmap <F5> :!./%.o<CR>
imap <F5> <Esc>:!./%.o<CR>
vmap <F5> <Esc>:!./%.o<CR>

" Compile C++
nmap <F6> :!g++ -std=c++14 -o "%.o" %<CR>
imap <F6> <Esc>:!g++ -std=c++14 -o "%.o" %<CR>
vmap <F6> <Esc>:!g++ -std=c++14 -o "%.o" %<CR>


"---------------------------------------
" COMPLEX STUFF
"---------------------------------------

" NERDTREE (close toogle if close file and open on dirs)
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

