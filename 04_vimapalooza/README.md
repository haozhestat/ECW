## DIY IDE (Do it Yourself Integrated Development Environment)

This week we are going to talk about creating an integrated development 
environment for Python and R (or actually any other interpreted language). We 
will use the following tools:
- tmux
- tmuxinator
- Vim (of course)
- various plugins for Vim 
- GNU Screen

### Tmux 

[Tmux](https://tmux.github.io/) is a terminal multiplexer, which means that it allows multiple terminal 
sessions to run within the same window. You can split the window into vertical or 
horizontal segments an arbitrary number of times, creating many instances 
of separate terminal sessions.

Why do we care about this? This means that we can use Vim in one side of the 
window and have an R or Python interpreter in the other side of the window.

See [here](https://gist.github.com/MohamedAlaa/2961058) for a list of 
commonly used tmux shortcuts.

So great, we can split the screens and stuff. That's cool, I guess. But can we 
actually send code from a file that we are editing in Vim to the interpreter?
The answer, of course, is yes. 

#### Tmux with R

In R, the communication between Vim and an R interpreter in tmux is 
handled through some black magic in the 
[Vim-R-Plugin](https://github.com/jcfaria/Vim-R-plugin), a plugin for Vim.
This plugin actually does way more than that, however. 

See [this](https://github.com/vsbuffalo/devnotes/wiki/Vim,-R,-and-Tmux:-Minimal-Configuration)
for a quick-and-dirty installation/set-up guide to get started with the 
Vim/R/tmux combo.

#### Tmux with Python 

For Python, the communication between Vim and a Python interpreter (you should 
an iPython terminal here) is handled through a Vim plugin called [Vim-Slime](https://github.com/jpalardy/vim-slime).
Basically Slime just copies code that you tell it to send over to another tmux 
pane and pastes it in that pane.

We have to be a little careful here since Python syntax relies on proper 
indentation, and for that reason copying and pasting Python code from one tmux pane 
to another could get messy. Luckily there is a solution: the 
iPython interpreter, which provides the so-called "magic paste" option that fixes 
this issue. So instead of using a regular Python interpreter to complement Vim, 
we will use an iPython interpreter.

See below for the next steps in setting up our Python IDE.

### Setting up our Python IDE

Here is an excellent blog post that describes setting up Vim as an excellent Python 
editor: [http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/](http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/).

We need to do a little more in order to be able to send code to the interpreter.
First, make sure you have iPython installed.

#### Further reading

- [https://hackercodex.com/guide/python-development-environment-on-mac-osx/](https://hackercodex.com/guide/python-development-environment-on-mac-osx/)
- [Virtual Environments](http://docs.python-guide.org/en/latest/dev/virtualenvs/)

### More plugins that enhance Vim for both Python and R

- [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [AutoComplPop](https://github.com/vim-scripts/AutoComplPop)

### GNU Screen

Screen, like tmux, is a terminal multiplexer. Everything we did using tmux we 
could have also done using screen, but here is a nice 
[article](http://dominik.honnef.co/posts/2010/10/why_you_should_try_tmux_instead_of_screen/)
for why tmux is becoming more popular than Screen. You may occasionaly have 
to use Screen instead of tmux, for example, if you are logged into a linux server
and the server doesn't have Tmux installed. 
