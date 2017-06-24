syntax on
filetype plugin indent on

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
call vundle#end()            " required
filetype plugin indent on    " required

" Defaults and global settings
set enc=UTF-8                  " <encoding>   Set the encoding
set nowrap                     " <nowrap>     Don't wrap lines
set wmnu                       " <wildmenu>   Show tab completion when in menu
set wim=longest:full,full      " <wildmode>   Complete full option.
set history=100                " <history>    History backlog. Default is
set t_Co=256                   "              Number of colors
set updatetime=250

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

" Trim trailing whitespace
autocmd BufWritePre * :%s/ \+$//e

" Airline
let g:airline_left_sep=""
let g:airline_right_sep=""

" Ctrl P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore={
  \ "dir": "node_modules",
  \ "file": "^\.DS_Store\|^\.git"
  \ }

" Nerd Tree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Custom leader key
nnoremap <space> <Nop>
let mapleader = " "

" Vsplit
set splitright  " split new window on the right
set splitbelow  " split new window below
nnoremap <leader><Left> <C-w>h
nnoremap <leader><Down> <C-w>j
nnoremap <leader><Up> <C-w>k
nnoremap <leader><Right> <C-w>l

" New tab
nnoremap <leader>t :vnew<cr>
