set runtimepath=~/.vim

" Add plugins
set rtp +=~/.vim/slimv/
set rtp +=~/.vim/vim-airline/
set rtp +=~/.vim/vim-gitgutter/
set rtp +=~/.vim/vim-fugitive/

" Add color theme paths
set rtp +=~/.vim/gruvbox/
set rtp +=~/.vim/molokai/

" Add the vim runtime last
set rtp +=$VIMRUNTIME

" Use UTF-8
set encoding=utf-8

" Backspace should do what I expect
set backspace=2

" Setup tabs
set expandtab tabstop=2 shiftwidth=2

" Show a column marker at line 80
set cc=80

" Set various options when in gui mode
if has("gui_running")

  " Set the size of the window
  set lines=46 columns=96

  " Turn off the menubar and toolbar
  set guioptions -=m
  set guioptions -=T

  " Show whitespace characters in gui mode
  set list listchars=tab:→\ ,trail:•

  " Set the font to render with
  if has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono\ 11
  elseif has("gui_macvim")
    set guifont=Monaco:h14
  elseif has("gui_win32") || has("gui_win64")
    set guifont=Consolas:h11
  endif
endif

" Airline status bar always
set laststatus=2

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

" GitGutter options
let g:gitgutter_sign_column_always=1

" Turn off paredit mode
let g:paredit_mode=0

" Configure SWANK
if has("win32") || has("win64")
  let g:slimv_swank_cmd='!start "wx86cl64 --load ~/.vim/slimv/slime/start-swank.lisp"'
else
  let g:slimv_swank_cmd='!gnome-terminal -e "lx86cl64 --load ~/.vim/slimv/slime/start-swank.lisp" &'
endif
