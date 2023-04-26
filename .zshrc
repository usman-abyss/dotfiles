export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting z)


source $ZSH/oh-my-zsh.sh
alias ls="ls --color=auto --group-directories-first"
alias n="nvim"
alias c="clear"
alias colorchange="bash -c  '$(wget -qO- https://git.io/vQgMr)' "
alias bat="batcat"
alias pn="pnpm"
alias sysupgrade="sudo apt update && sudo apt upgrade -y"
alias yt-mp3="yt-dlp -f bestaudio --extract-audio --audio-format mp3"

export EDITOR=nvim


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
      print -n "%{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
      print -n "%{%k%}"
  fi

  print -n "%{%f%}"
  CURRENT_BG='' 

  #Adds the new line and ➜ as the start character.
  printf "\n ➜";
}

export PATH=$PATH:/usr/local/go/bin

