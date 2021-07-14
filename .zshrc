export ZSH="$HOME/.oh-my-zsh"

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

ZSH_THEME="alanpeabody"
eval `dircolors $HOME/.dir_colors/dircolors`

plugins=(git tmux tmuxinator vi-mode vim-interaction python pip jsontools zsh-autosuggestions git-flow-completion zsh-completions )
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

alias c=clear
alias lsgrep=$HOME/Documents/lsgrep
alias vim=nvim
source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
bindkey -s '^f' 'vim $(fzf)\n'

### lsgrep file ###
#(ls | grep $1)
