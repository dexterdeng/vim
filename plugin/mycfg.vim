"--------------------------------------------------------------------------
" My Vim Configuration
"--------------------------------------------------------------------------
set number
set nobackup      "No backups
set autoread      "Re-read if modified
set cmdheight=1   "lines for command window
set laststatus=2  "Always show status line
set history=50    "Save at most 50 commands
set hlsearch
set nocompatible  "We're running Vim, not Vi!


"--------------------------------------------------------------------------
"  Auto file type and indent
"--------------------------------------------------------------------------
filetype on         "Enable file type
filetype plugin on  "Enable file type plugin
filetype indent on  "Enable file type indent
set shiftwidth=2    "Use 2 spaces for indent default
set tabstop=2       "Use 2 spaces for tabs
set expandtab       "Use space instead of tabs
autocmd FileType ruby set shiftwidth=2 tabstop=2 expandtab
autocmd FileType python set shiftwidth=2 tabstop=2 expandtab
autocmd FileType javascript set shiftwidth=2 tabstop=2 expandtab
autocmd FileType java set shiftwidth=4 tabstop=4 expandtab


"--------------------------------------------------------------------------
" uncomment this if you want to use mouse
"--------------------------------------------------------------------------
set ttymouse=xterm
set mouse=nv


"--------------------------------------------------------------------------
" Options for Graphic version of VIM
"--------------------------------------------------------------------------
set guioptions-=T "No Toolbar
set guioptions-=L "No left hand scrollbars
set guioptions-=r "No right hand scrollbars
set guioptions-=m "No menu bar


"--------------------------------------------------------------------------
" colorscheme
"--------------------------------------------------------------------------
if &term == "screen"
  colorscheme vibrantink
else
  colorscheme vibrantink
endif


"--------------------------------------------------------------------------
" mappings
"--------------------------------------------------------------------------
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif


"--------------------------------------------------------------------------
" others
"--------------------------------------------------------------------------
auto BufEnter * let &titlestring = expand("%:p") . " (".&ft.":".&fenc.")"

if &term == "screen"
  set t_ts=k
  set t_fs=\
endif

set clipboard=unnamed


"--------------------------------------------------------------------------
"  MacVim
"--------------------------------------------------------------------------
if has("gui_macvim")
  set fuoptions=maxvert,maxhorz
  syntax on
endif
