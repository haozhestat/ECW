![https://camo.githubusercontent.com/bc559468e6623d18947ced1ef353f68f6116e45a/687474703a2f2f692e696d6775722e636f6d2f527565683743632e706e67](https://camo.githubusercontent.com/bc559468e6623d18947ced1ef353f68f6116e45a/687474703a2f2f692e696d6775722e636f6d2f527565683743632e706e67)

> Vundle is short for Vim bundle and is a Vim plugin manager.

Basically, [Vundle](https://github.com/VundleVim/Vundle.vim) makes it ten times easier to install and update plugins for Vim.
Instead of having to manually download, unpack, and install plugins to your ```.vim/```
directory, you can just add a single new line in ```.vimrc``` and then run 
```:PluginInstall``` from within Vim, or ```vim +PluginInstall +qall``` from the 
command line.

## Installation

Simply use 

```git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim```

Then we have to add a few things to our ```.vimrc```. The top of your ```.vimrc``` 
should look like this:

```
set nocompatible              
filetype off                  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
```

Once your ```.vimrc``` is set up, launch Vim and type ```:PluginInstall```.

Source: [https://github.com/VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim)
