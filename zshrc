export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git volta vscode)

source $ZSH/oh-my-zsh.sh

alias ni="npm install"
alias ns="npm start"
alias nd="npm run dev"

alias gdelall="git branch | grep -vw master | xargs git branch -D"
