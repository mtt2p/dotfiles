platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='Darwin'
fi


#if [ -f ~/.bashrc ]; then . ~/.bashrc; fi 

if [[ $platform == 'linux' ]]; then
	source ~/.linux 

elif [[ $platform == 'Darwin' ]]; then
#    source ~/.profile
	source ~/.osx 
fi

if [ -f /usr/local/share/liquidprompt ]; then
 . /usr/local/share/liquidprompt
fi

#source ~/git/liquidprompt/liquidprompt
export EDITOR=vim
export SVN_EDITOR=vim
alias ..='cd ..'

set -o vi

HISTSIZE=3000
HISTFILESIZE=5000
HISTCONTROL=ignoredups:ignorespace 
shopt -s histappend

for file in ~/.{aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#[ -e  "$HOME/dotfiles/bin" ] && PATH="$PATH:$HOME/dotfiles/bin"

#echo "end: bash_profile"
