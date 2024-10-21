export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  history-substring-search
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit && compinit

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH

alias ls="exa --icons"
alias bat="bat --style=auto"
alias a= "add"
alias c= "commit"
alias p= "git push"
alias pl= "pull"
alias s= "status"
alias l= "log"
alias d= "diff"
alias b= "branch"
alias co= "checkout"
alias f= "fetch"
alias m= "merge"
alias t= "tag"

export LD_LIBRARY_PATH=/opt/oracle/instantclient_21_11:$LD_LIBRARY_PATH
export NLS_LANG="BRAZILIAN PORTUGUESE_BRAZIL.WE8ISO8859P1"

export STARSHIP_CONFIG=~/.config/starship.toml

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

eval "$(starship init zsh)"
eval "$(mise activate zsh)"
eval "$(vfox activate zsh)"

export PATH="/home/henri/shorebird/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux64/bin:$PATH"


## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/henri/.dart-cli-completion/zsh-config.zsh ]] && . /home/henri/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

