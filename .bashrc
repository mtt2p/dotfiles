#if [ -n "$BASH_ENV" ]; then . "$BASH_ENV"; fi  
#[ -z "$PS1" ] && return
#[ -n "$PS1" ] && source ~/.bash_profile
[[ -z $PS1 ]] && export PATH="$PATH:/usr/local/bin" && source ~/.bash_profile 
