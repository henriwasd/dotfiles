### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

### Zinit's plugins section ###

zi load zdharma-continuum/history-search-multi-word
zi light zsh-users/zsh-autosuggestions
zi light zdharma-continuum/fast-syntax-highlighting
zi snippet https://gist.githubusercontent.com/hightemp/5071909/raw/

### Zinit's plugins section ###

### Zinit's theme section ###

zi ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zi light starship/starship

### Zinit's theme section ###

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

# Oracle Client
export LD_LIBRARY_PATH=/opt/oracle/instantclient_21_11:$LD_LIBRARY_PATH

# Oracle Client
export NLS_LANG="BRAZILIAN PORTUGUESE_BRAZIL.WE8ISO8859P1"

export STARSHIP_CONFIG=~/.config/starship.toml

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

eval "$(vfox activate zsh)"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/henri/.dart-cli-completion/zsh-config.zsh ]] && . /home/henri/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export PATH="/home/henri/.shorebird/bin:$PATH"


