# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ruby gems PATH
#export PATH=$PATH":/home/kraken/.local/share/gem/ruby/3.0.0/bin"
#export GEM_HOME=$HOME/.gem
#export GEM_PATH=$HOME/.gem

alias ls='ls --color=auto'
alias vim='nvim'
alias vi='nvim'
#PS1='[\u@\h \W]\$ '
PROMPT_COMMAND="echo"
#PS1='\[\e[0;38;5;229m\]╔═\[\e[0;38;5;229m\][\[\e[0m\]\u\[\e[0;1;38;5;228m\]@\[\e[0m\]\h\[\e[0;38;5;229m\]] \[\e[0;2;38;5;229m\]≡  \[\e[0;3;38;5;191m\]\w\n\[\e[0;38;5;228m\]╚═ \[\e[0;1;38;5;220m\]\$ \[\e[0m\]'
PS1='\[\e[38;5;229m\]╔═[\[\e[0;1m\]\u\[\e[38;5;228m\]@\[\e[39m\]\h\[\e[0;38;5;229m\]] \[\e[2m\]≡  \[\e[0;38;5;186;3m\]\w\n\[\e[0;38;5;228m\]╚═ \[\e[38;5;220;1m\]\$ \[\e[0m\]'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
