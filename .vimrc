" WARNING!!!!!!!!!!!!!
" An important thing to note, make sure you don't put any comments on the
" right hand side of a remap. They will be interpreted as commands for the
" remap as opposed to comments.

syntax on
set nocompatible              " be iMproved, required
filetype off                  " required

" Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dracula/vim'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype plugin indent on

" Visual
colorscheme dracula
:highlight LineNr ctermfg=grey

" Defaults and global settings
set enc=UTF-8                  " <encoding>   Set the encoding
set nowrap                     " <nowrap>     Don't wrap lines
set wmnu                       " <wildmenu>   Show tab completion when in menu
set wim=longest:full,full      " <wildmode>   Complete full option.
set history=100                " <history>    History backlog. Default is
set t_Co=256                   "              Number of colors
set updatetime=250
set backspace=2                "              Allow backspace over anything

" Preferred spacing and shifting options
set sw=4   " <shiftwidth> Number of spaces per tab for auto indent
set sr     " <shiftround> Drop next line to previous shiftwidth
set ts=4   " <tabstop>    Spaces per tab
set et     " <expandtab>  In insert mode, use # of spaces to insert tab.
set sta    " <smarttab>   I think this helps with dropping a line
set ai     " <autoindent> Read name

" Searching in a file
set hls        " <hlsearch>   Highlight search strings
set ignorecase " <ignorecase> Ignore case when searching
set scs        " <smartcase>  Don't ignore case when capitals are present

" Movement control and visual pleasantries
set cul        " <cursorline>  Highlight the current line
set nu         " <number>      Show line numbers in gutter
set nuw=2      " <numberwidth> Default width of gutter
set sm         " <showmatch>   Show matching brackets and stuff
set sc         " <showcmd>     Show command in the last line of the screen
set vb t_vb=   " <visualbell>  Turns default to on.
set ve=block   " <virtualedit> Allows for selecting empty spaces.

" Custom leader key
nnoremap <space> <Nop>
let mapleader = " "

" New tab
nnoremap <leader>t :vnew<cr>

" Vsplit
set splitright  " split new window on the right
set splitbelow  " split new window below
nnoremap <leader><Left> <C-w>h
nnoremap <leader><Down> <C-w>j
nnoremap <leader><Up> <C-w>k
nnoremap <leader><Right> <C-w>l
nnoremap <leader>w :w<Enter>
nnoremap <leader>q :q<Enter>

" Trim trailing whitespace on save
autocmd BufWritePre * :%s/ \+$//e

" Airline
set laststatus=2
let g:airline_left_sep=""
let g:airline_right_sep=""

" Nerd Tree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '\.swp$', '\.DS_Store$']

" Golang - auto fmt+import on save
let g:go_fmt_command = "goimports"

" Rust - auto fmt on save
let g:rustfmt_autosave = 1
