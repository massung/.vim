set runtimepath=~/.vim

" Add plugins
set rtp +=~/.vim/vim-airline/
set rtp +=~/.vim/vim-gitgutter/
set rtp +=~/.vim/vim-fugitive/
set rtp +=~/.vim/vim-go/

" Add color theme paths
set rtp +=~/.vim/gruvbox/
set rtp +=~/.vim/molokai/
set rtp +=~/.vim/SerialExperimentsLain/

" Add the vim runtime last
set rtp +=$VIMRUNTIME

" Use UTF-8 and Unix line endings
set encoding=utf-8
set fileformats=unix

" Backspace should do what I expect
set backspace=2

" Setup tabs
set noexpandtab tabstop=3 shiftwidth=3

" Show a column marker at line 80
"set cc=80

" Disable auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically remove all trailing whitespace on save and retab
autocmd BufWritePre * :%s/\s\+$//e

" Set various options when in gui mode
if has("gui_running")

	" Set the size of the window
	set lines=46 columns=96

	" Turn off the menubar and toolbar
	set guioptions -=m
	set guioptions -=T

	" Show whitespace characters in gui mode
	set list listchars=tab:»\ ,trail:·

	" Set the font to render with
	if has("gui_win32") || has("gui_win64")
		set guifont=Anonymous\ Pro:h12
	else
		set guifont=Anonymous\ Pro\ 12
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
colorscheme SerialExperimentsLain

" Turn off paredit mode
let g:paredit_mode=0
