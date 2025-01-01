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
alias ts='/Applications/Tailscale.app/Contents/MacOS/Tailscale'
alias ml='cd $HOME/dev/ml/'
alias mkd='/Users/bl/Library/Python/3.10/bin/mkdocs'
alias zrl='source ~/.zshrc'
alias zed='vim ~/.zshrc'
alias bupg='brew update & brew upgrade'
alias c='/usr/bin/clear'
alias mkdir='mkdir -pv'
alias h='history'
alias j='jobs -l'
alias now='date +"%d-%m-%Y"'
alias fastping='ping -c 100 -s.2'
alias ping='ping -c 5'
refresh () { while true; do $@; sleep 1; clear; done; }
alias ytdlm='yt-dlp --extract-audio --audio-format mp3'
alias uptime='uptime --pretty'
alias pubkey='cat ~/.ssh/id_ed25519.pub'
alias shed='vim ~/.ssh/config'
alias pivpn='ssh pi "pivpn -c"'
alias pivpn-ts='ssh tail-pi "pivpn -c"'
