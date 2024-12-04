eval "$(starship init zsh)"

export STARSHIP_CONFIG=~/.dotfiles/starship.toml

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  zsh-autosuggestions
  colored-man-pages
  history-substring-search
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

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

export LD_LIBRARY_PATH=/opt/oracle/instantclient_21_11
export NLS_LANG="BRAZILIAN PORTUGUESE_BRAZIL.WE8ISO8859P1"
export TZ=America/Sao_Paulo

eval "$(vfox activate zsh)"

export BROWSER=wslview
