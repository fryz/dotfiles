"make sure vim and crontab do not suck
if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif

set nocompatible                "make vim act as vim not vi
set backspace=indent,eol,start  "make backspace work as we want
set enc=utf8                    "set encoding to utf8
set nu                          "set line numbers

"set indentation
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set some search stuff
set incsearch
set hlsearch
set ignorecase
set ruler
set clipboard=unnamed

color koehler
"set background=dark
"colorscheme solarized

set modeline
set laststatus=2

" arrow key mappings for wrapped lines
map <Up> gk
map <Down> gj

" mapping esc
inoremap jj <ESC>

" center search on page
map n nzz
map N Nzz

"tab mappings
map gb gT

"toggle line wrap off
set wrap!

" change to directory that file buffer is in
nnoremap ,cd :cd %:p:h<CR>

"syntax hilighting on
syntax enable

"work for pasting
set pastetoggle=<F2>

"some typos and other commands
command! Q q
command! W w
command! Wq wq
command! WQ wq

" Mapping shortcut to remove highlight
nnoremap <space> :nohl<CR>

"
" Python Specific Code
" python sepcific keywords (remove '(' and '.' )
au BufEnter *.py set iskeyword=@,48-57,_,192-255
filetype indent plugin on
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

"remove trailing whitespace from python files
autocmd BufWritePre * :%s/\s\+$//e

"pathogen
execute pathogen#infect()
