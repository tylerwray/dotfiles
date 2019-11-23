######################################################
#                                                    #
#                Tyler Wray's .zshrc                 #
#                                                    #
######################################################

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
DEFAULT_USER='tylerwray'
prompt_context(){}

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker)

source $ZSH/oh-my-zsh.sh

# Source local config that shouldn't be tracked with Git
source ~/.localrc

# ----------- Aliases --------------

# Alacritty configuration
alias alc="nvim ~/.config/alacritty/alacritty.yml"

# Shortcuts
alias l="ls"
alias g="git"
alias e="nvim +Files +only"

# Elixir
# alias phx="source .env && iex -S mix phx.server"
alias phx="iex -S mix phx.server"

# Docker
alias dc="docker-compose"
alias drm="docker rm -f \$(docker ps -aq)"
alias drmi="docker rmi -f \$(docker images -q)"
alias drmv="docker volume rm -f \$(docker volume ls)"
alias dsp="docker system prune --all --force --volumes"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"
alias localip="ipconfig getifaddr en1"
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print \$2}'"

# Git Stuff
alias gs='git status'
alias gl='git log'
alias gb='git branch | cat'
alias gsl='git shortlog -sn'
alias gwts='git ls-files | xargs wc -l' # count number of lines of code in a git project
alias lumberjack="git fetch -p > /dev/null 2>&1 && git branch --no-color -vv | grep 'origin/.*: gone]' | awk '{print \$1}' | xargs git branch -D"
alias wip="git add . && git commit -m \"WIP\""

# Download file and save it with filename of remote file
alias get="curl -O -L"

# File size
alias fs="stat -f \"%z bytes\""

# ZSH
alias reload="source ~/.zshrc && echo 'Shell config reloaded from ~/.zshrc'"
alias zshrc="nvim ~/dotfiles/terminal/zshrc"
alias localrc="nvim ~/.localrc"

# vim
alias vi="nvim"
alias vim="nvim"
alias vc="(cd ~/.config/nvim && nvim .)"
alias plug_install="nvim +PlugInstall +qall"

# tmux
alias tm="TERM=xterm-256color tmux"
alias tmc="nvim ~/.tmux.conf"

alias k="kubectl"

# Generate a UUID
alias uuid="uuidgen | awk '{printf tolower(\$0)}' | pbcopy"

# ---------- Environment ----------

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# fzf
export FZF_DEFAULT_COMMAND="rg --files --hidden --iglob '!.git'"
FZF_DEFAULT_OPTS="--preview '[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --theme=TwoDark --color=always --style=numbers,changes --pager=\"less -FR\" {} || cat {}) 2> /dev/null | head -300'"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:-1,hl+:#d858fe
--color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef
'

# asdf configuration
export NODEJS_CHECK_SIGNATURES=no

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"

# Not sure what this is
# fpath+=${ZDOTDIR:-~}/.zsh_functions
