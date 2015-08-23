# My ~/.vimrc and ~/.vim/ Repo

This is just a safe place for me to keep my .vim information (as opposed to using Dropbox and copy/pasting it everywhere). And maybe someone else can find it useful, too.

To get started, simply clone this repo from your home folder, then create a symbolic link to the .vimrc file within it.

    ~ $ git clone https://github.com/massung/.vim.git
    ~ $ ln -s .vim/.vimrc .

Now, head into the .vim/ folder and get all the submodules that are being used.

    ~/.vim $ git submodule init
    ~/.vim $ git submodule update

That's it!
