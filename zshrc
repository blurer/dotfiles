# paths
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

# set zsh stuff
ZSH_THEME="ys"
source $ZSH/oh-my-zsh.sh

# set plugins
plugins=(git)

# history
HISTFILE=$HOME/.zsh-history 
HISTSIZE=100000  
SAVEHIST=1000000 

# share .zshhistory
setopt inc_append_history   # save the command to history when running
setopt share_history        # share history with other session

# automatically change directory when dir name is typed
setopt auto_cd

# 256 color mode
export TERM="xterm-256color"


# alias
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias wanip='curl ifconfig.com'
alias l="ls -CF"
alias ll="ls -lh"
alias la="ls -A"
alias sl="ls"
alias zshrl='source $HOME/.zshrc'
alias zshed='vim $HOME/.zshrc'
alias dev='cd $HOME/dev/'
alias dkr='cd $HOME/docker/'
alias dps='docker ps'
alias pacu='sudo pacman -Syu'
alias pacs='sudo pacman -S'
alias aptu='sudo apt update -y ; sudo apt upgrade -y'
alias apti='sudo apt install -y'
alias giti='git init'
alias gita='git add .'
alias gitc='git commit -m'
alias gitp='git push'
alias gc='git clone'
