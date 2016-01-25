# Week 1: February 5

## Getting started with Vim  

Vim is an all-purpose, lightweight text editor that can be accessed through the 
command line. Actually it is the default command-line editor on Mac OS X. While 
it can be intimating to learn, the benefits of mastering Vim far outweight the steep 
learning curve in our opinion.

Basically the point of Vim is so that you can type and edit code much faster. It 
is used on the command line because there is no point of having a graphical user 
interface with Vim - everything you do is with the keyboard, and in fact you 
should never have to remove your hands from the keyboard while using Vim.
There are many key combinations to learn that make this possible. You will 
learn how to navigate, search for text, copy and paste, 
perform regular expression searching and replacing, and many more things 
all with the touch of a few keys.

People have written a huge variety of plugins (extensions) for Vim that make it 
way more than just an efficient typing machine. For example:

- vim-latex is a great plugin for LaTeX that allows you to quickly create new enviroments 
and jump outside of an environment when you are finished type in it.
- vim-R-plugin is extension that allows to send code as you write it to an 
R session in another arbitrary terminal window. It also has support for doing 
the same with Python. This is what an interactive session looks like with 
vim-R:
![../images/vim-R-plugin1.png](../images/vim-R-plugin1.png)
- emmet-vim is extension that allows to write HTML code with amazing efficient.
You can create arbitrary nested elements using a special syntax and key 
combination, and then jump around between text input spaces. 
- nerdcommenter gives you shortcuts to beautifully comment lines or blocks of 
code in just about any language.
- Ian wrote an awesome plugin himself, called iliketowatch, which automatically
refreshes pages in a browser as you edit them in Vim.

The other appeal of Vim is that it is highly customizable. If you look at my 
Vim setup (Evan) versus Ian's, they look like a completely different text 
editor. Not only is the visual appearance of our editors completely different,
but both of us have customized our shortcuts and key combinations to suit our 
own needs. As you will find out, you become very invested in your personal 
Vim setup. The relationship you will have with your Vim editor will be like any 
relationship - it takes work, and sometimes you may get frustrated, but if you stick
with it you will love your partner (Vim) and may even experience separation
anxiety when you are forced to be apart for too long.

### Installing

See main page for links to installation instructions. On Mac, you alread have 
Vim installed, but we recommend installing an updated version via Homebrew. If Homebrew 
is installed, this should be as simple as typing ```brew install vim``` from the 
command line.

### Your first task 

If you have never used Vim before, the first thing you should do is work through 
the interactive tutorial. This will take about 30 minutes and give you the basics 
to start editing files. Here is how you get started:

- Get into the command line
- Type ```vim```
- Type ```:help tutor```, and you'll be on your way!

### Setting up your vimrc

Your ```.vimrc``` file is how you customize your editor. It tells Vim which 
plugins to load, which color scheme to use, custom key bindings that you have 
created, and so on. You can costomize just about every aspect of Vim, and even at 
the file level - you can ask Vim to behave a certain way depending on the type 
of file that you are editing. Below is an example of a ```.vimrc``` file that we 
took from Vim's website. This file goes in your home directory ```~/.vimrc```.
You also see examples of more advanced vimrc's by checking out either 
[mine](https://github.com/epwalsh/Code/blob/master/backup_osx_admin/.vimrc) or 
[Ians](https://github.com/imouzon/dotfiles/blob/master/.vimrc.bak).

```
" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
 
"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
 
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
 
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
 
" Enable syntax highlighting
syntax on
 
 
"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.
 
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
 
" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
 
" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline
 
 
"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.
 
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
" Display line numbers on the left
set number
 
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
 
 
"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4
 
 
"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
 
"------------------------------------------------------------
```
