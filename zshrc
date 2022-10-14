######################################################
#                                                    #
#                Tyler Wray's .zshrc                 #
#                                                    #
######################################################
export ZSH_DISABLE_COMPFIX="true"

include() {
  [[ -f "$1" ]] && source "$1"
}

# Directories to be prepended to $PATH
declare -a dirs_to_prepend
dirs_to_prepend=(
  "/bin"
  "/sbin"
  "/usr/sbin"
  "/usr/bin"
  "/usr/local/bin"
  "/usr/local/sbin"
  "/usr/local/git/bin"
  "/usr/local/"
  "/usr/local/mysql/bin"
  "/sw/bin/"
  "$HOME/dotfiles/bin"
  "$HOME/bin"
  "$HOME/Library/Python/2.7/bin"
  "$HOME/go/bin"
  "/usr/local/opt/icu4c/bin"
  "/usr/local/opt/icu4c/sbin"
  "$HOME/.cargo/bin"
  "$HOME/.yarn/bin"
  "$HOME/.config/yarn/global/node_modules/.bin"
)

# Loop and assign path above
for dir in ${(k)dirs_to_prepend[@]}
do
  if [ -d ${dir} ]; then
    # If these directories exist, then prepend them to existing PATH
    PATH="${dir}:$PATH"
  fi
done
unset dirs_to_prepend
export PATH


# Hide the agnoster prefix user on local machine
DEFAULT_USER='personal'
prompt_context(){}

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(asdf git)

include $ZSH/oh-my-zsh.sh
include ~/.localrc

# ----------- Aliases --------------

# Shortcuts
alias l="ls"
alias g="git"
alias e="nvim +Files"

# Elixir
alias phx="iex -S mix phx.server"

# Docker
# alias dc="docker-compose"
# alias drm="docker rm -f \$(docker ps -aq)"
# alias drmi="docker rmi -f \$(docker images -q)"
# alias drmv="docker volume rm -f \$(docker volume ls)"
# alias dsp="docker system prune --all --force --volumes"

# IP addresses
# alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
# alias dig="dig +nocmd any +multiline +noall +answer"
# alias localip="ipconfig getifaddr en1"
# alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print \$2}'"

# Git Stuff
alias gs='git status'
alias gl='git log'
alias gb='git branch | cat'
alias gsl='git shortlog -sn'
alias gwts='git ls-files | xargs wc -l' # count number of lines of code in a git project
alias lumberjack="git fetch -p > /dev/null 2>&1 && git branch --no-color -vv | grep 'origin/.*: gone]' | awk '{print \$1}' | xargs git branch -D"
alias wip="git add . && git commit -m \"WIP\" --no-verify"
alias unwip="git reset HEAD~"
export GIT_MERGE_AUTOEDIT=no # Don't open merge message edit when merging master

# Download file and save it with filename of remote file
# alias get="curl -O -L"

# File size
alias fs="stat -f \"%z bytes\""

# ZSH
alias reload="source ~/.zshrc && echo 'Shell config reloaded from ~/.zshrc'"
alias zshrc="nvim ~/dotfiles/zshrc"
alias localrc="nvim ~/.localrc"

# vim
alias vi="vim"
alias vim="nvim"
alias nvc="(cd ~/.config/nvim && nvim .)"
alias plug_install="nvim +PlugInstall +qall"

# tmux
# alias tm="TERM=tmux-256color tmux -2"
# alias tmc="nvim ~/.tmux.conf"
# alias tmks="tmux kill-session -t"

# alias k="kubectl"

# Generate a UUID
# alias uuid="uuidgen | awk '{printf tolower(\$0)}' | pbcopy"

# ---------- Environment ----------

# terminal
export TERM=xterm-256color

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# bat
alias cat="bat"
export BAT_THEME="Monokai Extended"
export BAT_STYLE="numbers,changes"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# fzf
export FZF_DEFAULT_COMMAND="rg --files --hidden --iglob '!.git'"
FZF_DEFAULT_OPTS="--border --preview '[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always --pager=\"less -FR\" {} || cat {}) 2> /dev/null | head -500'"

# Onedark theme
# export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
# --color=dark
# --color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:-1,hl+:#d858fe
# --color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef
# '
# Dracula Theme
# export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
# --color=dark
# --color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f
# --color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7
# '
# Gruvbox theme
# export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
# --color=fg:#ebdbb2,bg:#282828,hl:#689d6a
# --color=fg+:#fbf1c7,bg+:#282828,hl+:#8ec07c
# --color=info:#458588,prompt:#83a598,pointer:#fb4934
# --color=marker:#fabd2f,spinner:#83a598,header:#83a598
# '

# Sonokai Theme
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=fg:#afafb5,bg:#2c2e34,hl:#90ba6c
--color=fg+:#e2e2e3,bg+:#2c2e34,hl+:#a7df78
--color=info:#e7c664,prompt:#fc5d7c,pointer:#b39df3
--color=marker:#f39660,spinner:#b39df3,header:#76cce0'

# Don't open browser automatically with CRA apps
export BROWSER=none

# asdf configuration
export NODEJS_CHECK_SIGNATURES=no

include ~/.fzf.zsh

export ERL_AFLAGS="-kernel shell_history enabled"

fpath=(~/.stripe $fpath)
autoload -Uz compinit && compinit -i

export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac --with-ssl=$(brew --prefix openssl@1.1)"
export ERL_AFLAGS="-kernel shell_history enabled"
