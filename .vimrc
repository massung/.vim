set runtimepath=~/.vim,$VIMRUNTIME

" Add color theme paths
set rtp +=~/.vim/gruvbox/
set rtp +=~/.vim/molokai/
set rtp +=~/.vim/vim-hybrid/
set rtp +=~/.vim/jellybeans.vim/

" Add plugins
set rtp +=~/.vim/slimv.vim/
set rtp +=~/.vim/vim-gitgutter/
set rtp +=~/.vim/vim-airline/

" Set the initial size of the frame in gui mode
if has("gui_running")
    set lines=46 columns=120
endif

" Use UTF-8
set encoding=utf-8

" Airline status bar always
set laststatus=2

" Turn off the menubar and toolbar
set guioptions -=m
set guioptions -=T

" Turn on syntax highlighting and indentation
filetype plugin indent on
syntax on

" Use dark background in gui mode
if has("gui_running")
    set background=dark
else
    set background=light
endif

" Pick a color scheme
colorscheme gruvbox

" Always expand tabs
set expandtab tabstop=4

" Turn off paredit mode
let g:paredit_mode=0

" Setup SWANK options
let g:slimv_swank_cmd='! gnome-terminal -e "lx86cl64 --load ~/.vim/slimv.vim/slime/start-swank.lisp &"'
