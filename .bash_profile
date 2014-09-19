# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/bin
export PATH=~/.gem/bin:$PATH

# Change shell/terminal prompt display 
# Computer-Name:dir username$  ->  username:dir → branch$
parse_git_branch() {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ →\ \1/'
}
export PS1='\u\[\e[1;37m\]:\[\e[1;31m\]\W\[\e[1;33m\]$(parse_git_branch)\[\e[0;39m\]$ '

# set ls -G color for directories to yellow
export LSCOLORS=dxfxcxdxbxegedabagacad # sets color

# Setting PYTHONPATH for Python 2.7
#PYTHONPATH=~/dev/jackalope/jackalope/
#export PYTHONPATH

# Ruby Gem settings if not using RVM
# export GEM_HOME=~/.gem
# export GEM_PATH=~/.gem