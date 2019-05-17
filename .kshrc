# Theme
WHITE='\[\e[37m\]'
PURPLE='\[\e[35m\]'
BLUE='\[\e[34m\]'
YELLOW='\[\e[33m\]'
GREEN='\[\e[32m\]'
RED='\[\e[31m\]'
BLACK='\[\e[30m\]'
END='\[\e[m\]'
COLOR='\[\e[3'$((RANDOM%2+2))'m\]'
PS1="${COLOR}[\u@\h:\W]-[\t]-[\$?] % ${END}"
#HISTCONTROL=ignoredups,ignorespace
#HISTCONTROL=ignorespace

export EDITOR=vim
export FCEDIT=$EDITOR
export PAGER=most
export LESS='-iMRS -x2'
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000
set -o emacs

# Bindings
#bind -m '^L'=^C clear'^J^Y'
#bind -m '^L'=^U^Iclear'^J^Y'
#bind -m '^L'='^U clear^J^Y'
bind ^L=clear-screen
export HISTCONTROL=ignorespace

# Generics
stty status ^T

# NNN
export NNN_FALLBACK_OPENER=xdg-open

# Read .profile
. $HOME/.profile

# Completions
function reload_completions {
	if [ -e ~/.ksh_completions ]; then
		. ~/.ksh_completions
	fi
}

# Functions
copy()
{
  xclip -in -selection clipboard
}

# Aliases
alias ls="ls -FHh"
alias ll='ls -l'
alias la='ls -lA'
alias ..='cd ..'
alias ...='cd ...'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -ch'
alias weather='curl http://wttr.in/New_York'
command -v neomutt > /dev/null && alias mutt='neomutt'
alias svim="doas vim"
alias svi="doas vi"

# Sound
#mixerctl outputs.master=255
