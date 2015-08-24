set runtimepath=~/.vim

" Add plugins
set rtp +=~/.vim/slimv/
set rtp +=~/.vim/vim-gitgutter/
set rtp +=~/.vim/vim-airline/

" Add color theme paths
set rtp +=~/.vim/gruvbox/
set rtp +=~/.vim/molokai/
set rtp +=~/.vim/vim-hybrid/
set rtp +=~/.vim/jellybeans.vim/

" Add the vim runtime last
set rtp +=$VIMRUNTIME

" Set the initial size of the frame in gui mode
if has("gui_running")
  set lines=46 columns=120
endif

" Use UTF-8
set encoding=utf-8

" Airline status bar always
set laststatus=2

" Setup tabs
set expandtab tabstop=2 shiftwidth=2

" Show whitespace characters in gui mode
if has("gui_running") 
  set list listchars=tab:→\ ,trail:‧
endif

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

" Turn off paredit mode
let g:paredit_mode=0

" Configure SWANK 
if has("win32") || has("win64")
  let g:slimv_swank_cmd='!start "wx86cl64 --load ~/.vim/slimv/slime/start-swank.lisp"'
else
  let g:slimv_swank_cmd='!gnome-terminal -e "lx86cl64 --load ~/.vim/slimv/slime/start-swank.lisp" &'
endif
