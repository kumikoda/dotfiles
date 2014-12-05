syntax on

" Defaults and global settings
set enc=UTF-8                  " <encoding>   Set the encoding
set nowrap                     " <nowrap>     Don't wrap lines
set wmnu                       " <wildmenu>   Show tab completion when in menu
set wim=longest:full,full      " <wildmode>   Complete full option.
set history=100                " <history>    History backlog. Default is
set t_Co=256                   "              Number of colors

set wig+=*.o,.git,node_modules,build,bower_components " <wildignore> Files to ignore when autocompleting

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
set list       " <list>        Turn list on and set characters below
set lcs=nbsp:¬,eol:ϟ,tab:--,extends:»,precedes:«,trail:•

" Globals, overrides and traditional fixes
set ru                         " <runtime> Load in other files
set bsk=/tmp/*,/private/tmp/*  " <backupskip> Dont make swp files here
set nojs                       " <nojoinspaces> Dont auto-insert two spaces
set backspace=indent,eol,start " Fix backspace to play with other lines.
fixdel                         " Remove added backspace characters
filetype on                    " filetype plugin indent on

:so ~/.vim/src/plugin_configs.vim " Load third party configs

" -- Color scheme generator --
colorscheme jellybeans

" Fast update time
set updatetime=250

" Trim whitespace
autocmd BufWritePre * :%s/\s\+$//e
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

