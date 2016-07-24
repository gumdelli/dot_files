# the oh-my-zsh installation path.
export ZSH=~/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh
# remove the username before the prompt for agnoster theme
prompt_context () { }

attach () {
    tmux attach-session -t $1

}

list-sessions () {
    tmux list-sessions

}

detach () {
    tmux detach 
}

clone ()
{
    git clone $1
}

remote_chef_client ()
{
    ssh -tt $1 "sudo chef-client"
}

if [[ $PATH != /usr/local/bin* ]]; then
    export PATH=/usr/local/bin:$PATH
fi

# options that may be used
set -o vi
source ~/.rvm/scripts/rvm

# all env vars
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export JAVA_HOME=$(/usr/libexec/java_home) 

# all aliases
alias ll="ls -al"
alias repos="cd ~/Repos"
alias pull_rebase="git pull --rebase upstream master"
alias desktop="cd ~/Desktop"
alias documents="cd ~/Documents"
alias downloads="cd ~/Downloads"
alias reload="source ~/.zshrc"
alias prettyenv="env | awk -F \":\" '{print|\"$1 sort -n\"}'"
alias vimrc="vim ~/.vimrc"
alias zshprofile="vim ~/.zshrc"
alias clone="git clone"
alias pyclean='find . -name "*.pyc" -exec rm {} \;'
alias vim="/usr/local/Cellar/vim/7.4.1847_1/bin/vim"
