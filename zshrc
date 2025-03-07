OS=`uname`
if [[ $OS == 'Darwin' ]]; then
  export HOMEBREW_NO_ANALYTICS=1
  export PATH=$(brew --prefix python)/libexec/bin:$HOME/.local/bin:$PATH
fi

export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export EDITOR=nvim

ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions fzf docker ssh)

source $ZSH/oh-my-zsh.sh

alias mc="mc -u"
alias n="nvim"
alias d="docker"

bindkey "^[[1;9D"	beginning-of-line
bindkey "^[[1;9C"	end-of-line
bindkey "^[[1;3C" 	forward-word
bindkey "^[[1;3D"	backward-word

bindkey "ç"		fzf-cd-widget
