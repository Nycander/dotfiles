# Aliases
alias gst="git status"
alias gt="git tree"
alias bitch,="sudo"
alias ports="lsof -i -P | grep -i listen"

export PATH=/usr/local/sbin:$PATH

# Adds bin catalog in home directory
export PATH=~/bin:$PATH

# Enable colors
export CLICOLOR=1
# Use an awesome prompt
export PS1="$(echo '%{\e[1;37m%}%c %{\e[0;31m%}%(!.☭.∴)%{\e[0m%} ')"

# Fixes problem with perl whining about locale
export LC_CTYPE="en_US.UTF-8"
export LB_ALL="en_US.UTF-8"

if [[ -a ~/.localrc ]]
then
	source ~/.localrc
fi
