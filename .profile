# PATH
export PATH=$PATH:/Applications/MacVim.app/Contents/bin
export PATH=$PATH:/Users/oleksandr_ignatenko/flutter/bin
export PATH=$PATH:/usr/local/bin/
export PATH=$PATH:/usr/local/sbin/
export PATH=$PATH:/Users/oleksandr_ignatenko/google-cloud-sdk/bin
export PATH=$(pyenv root)/shims:/usr/local/bin:/usr/bin:/bin:$PATH
export PATH=$PATH:/Users/oleksandr_ignatenko/Library/Android/sdk/tools
export PATH=$HOME/.my/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# Lang
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# SSH
eval $(ssh-agent -s)
ssh-add ~/.ssh/github

# WSL
alias start="explorer.exe"

force_color_prompt=yes

# Terminal Markdown Viewer (mdv)
## Good values:
## 777.4644
## 856.0437
## 884.0977 *
## 963.4449
## 1027.0309
## 1057.4342
export MDV_THEME=963.4449

# Android
#export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/"

# Java
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home/"

# The f#ck
#eval $(thefuck --alias fix)

# JIRA
#eval "$(jira --completion-script-bash)"

eval "$(pyenv init -)"

# Prompt String
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function parse_git_dirty {
  git diff --quiet || echo "🔥"
}

# 🔥
# ❌

function limit_string {
  local str=$1
  local limit=$2
  local trunc_symbol=$3
  if [ "${#str}" -gt "$limit" ]
  then
      local cut_str=$(echo "$str" | cut -c"1-$limit")
      echo "$cut_str""$trunc_symbol"
   else
       echo $str
   fi
}

function parse_git {
  local branch=$(parse_git_branch)
  if [[ -n "$branch" ]]; then
    local short_branch=$(limit_string "$branch" 30 "…")
    echo " ($short_branch$(parse_git_dirty))"
  fi
}

function promt {
  local  LIGHT_RED="\[\033[1;31m\]"
  local  NORMAL="\[\033[00m\]"
  local  BOLD="\[\033[1m\]"
  local  OFF="\[\033[m\]"
  #PS1="${BOLD}[\W${LIGHT_RED}$(parse_git)${OFF}${BOLD}]\$${OFF} "
  #PS1="${BOLD}\W${LIGHT_RED}$(parse_git)${OFF}${BOLD} ➜${OFF} "
  # PS1="${BOLD}\W${LIGHT_RED}$(parse_git)${OFF}${BOLD} ->${OFF} "
  PS1="${BOLD}\W${LIGHT_RED}$(parse_git)${OFF}${BOLD} ❯${OFF} "
  PS2="${BOLD}>>${OFF} "
}

function git_status_multi_select() {
    git st --porcelain | fzf -m | sed -e "s/^ . //g"
}

function git_add_multi_select() {
    git add $(git_status_multi_select)
}

# Spell Checking
function spell { echo $@ | aspell -a; }

# Xcode
function rmdd {
    local path=~/Library/Developer/Xcode/DerivedData
    old_date=$(stat -f "%Sm" -t "%Y-%m-%d %H:%M" $path)
    echo "$old_date - $path: will be removed"
    rm -rf $path 
    echo "$path probably removed" 
    echo "checking if old directory removed..."
    sleep 4
    new_date=$(stat -f "%Sm" -t "%Y-%m-%d %H:%M" $path)
    echo "$new_date - $path"
}

function simshot {
    xcrun simctl io booted screenshot "$@"
}

function simrecord {
    xcrun simctl io booted recordVideo "$@"
}

# Notes tool

function note {
    local NOTES_REPO=~/.notes
    local EDITOR=vim
    
    if [ "$#" -eq 0 ]; then
        cd $NOTES_REPO
        return 0
    fi
    
    local FILE_PATH=$1
    local DIR_PATH=$(dirname $FILE_PATH)
    
    local RETURN_BACK=false
    if [ "$(pwd)" != $NOTES_REPO ]; then
        cd $NOTES_REPO
        RETURN_BACK=true
    fi
    
    if [ ! -d $DIR_PATH ]; then
        mkdir -p $DIR_PATH
    fi
    $EDITOR $FILE_PATH
    git add $FILE_PATH
    git commit -m "Work on $FILE_PATH"
    git push

    if [ "$RETURN_BACK" = true ]; then
        cd -
    fi
}

# Ѧ Ѩ 

PROMPT_COMMAND=promt

# Aliases
# alias l="ls -G"
# alias ls="ls -G"
# alias ll="ls -l"
# alias la="ls -a"
# alias lla="ls -la"
alias ls="exa"
alias l="ls -1 --icons"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias week="date +%V"
alias grep="grep --color=auto"
alias gp="grep --color=auto"
alias less="less -R"
alias le="less"
alias https='http --default-scheme=https'
alias w0="curl wttr.in/?0"
alias wn="curl wttr.in/?n"
alias ww="curl wttr.in"
alias load=". ~/.profile"
alias t="trans"
alias o="open"
alias png="ping 8.8.8.8"
#alias x="xclip -selection clipboard" # use pbcopy on Mac
alias x="pbcopy" # use pbcopy on Mac
alias vimrc="vim ~/.vimrc"
alias myvimrc="vim $HOME/.vimrc.d/main.vim"
alias ver="echo "\$BASH_VERSION""
alias p="pwd"
#alias px="pwd | xclip -selection clipboard" # use pbcopy on Mac
alias px="pwd | pbcopy" # use pbcopy on Mac
#alias ncal="ncal -M" # -M don't work on Mac

## Git
alias g="git"
alias co="git checkout"
alias st="git status"
alias s="git status"
alias ci="git commit"
alias log="git log"
alias pull="git pull"
alias p="git pull"
alias push="git push"
alias u="git push"
alias fadd="git_add_multi_select"
alias giff="git diff"
alias giffw="git diff --color-words"
alias ciff="git diff --cached"
alias ciffw="git diff --cached --color-words"
alias subup="git submodule update"
alias sel="git st -s | awk '{ print \$2 }' | fzf -m"

## Mercurial
alias gh="hg"
alias h="hg"

## GitLab
alias mrc="lab mr create origin"
alias mrl="lab mr list"
alias mro="lab mr browse"

## JavaScript
alias y="yarn"

## Python
alias py="python"
alias pe="pipenv"
alias pe.r="pipenv run"

## Docker
alias dk="docker"
alias dkm="docker-machine"
alias dkc="docker-compose"
alias dkc.e="docker-compose exec"

## Cocoapods
alias pod.i="pod install"
alias pod.u="pod update"

# Emoji

shrug() {
    # echo -n "¯\_(ツ)_/¯" | xclip -selection clipboard # use pbcopy on Mac
    echo -n "¯\_(ツ)_/¯" | pbcopy
}

cherry() {
    # echo -n "🍒" | xclip -selection clipboard # use pbcopy on Mac
    echo -n "🍒" | pbcopy
}

# Utiles

alias trim="awk '{\$1=\$1; print}'"
alias tolower="awk '{print tolower(\$0)}'"
alias tocamel="perl -pe 's/(^|_)([a-z])/uc(\$2)/ge'"
alias tomixed="perl -pe 's/_([a-z])/uc(\$1)/ge'"

## Local profile
#source ~/.profile.local

# Completions
#source ~/git-completion.bash

# Z - jump around (smart cd)
#. /usr/local/etc/profile.d/z.sh
# . $HOME/.linuxbrew/etc/profile.d/z.sh
. /home/linuxbrew/.linuxbrew/etc/profile.d/z.sh

# chruby
#source /opt/boxen/homebrew/opt/chruby/share/chruby/chruby.sh
#source /opt/boxen/homebrew/opt/chruby/share/chruby/auto.sh

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Haskell
#eval "$(stack --bash-completion-script stack)"

# This can be used to make text be italic (require terminal and terminfo support)
# echo `tput sitm`italics`tput ritm`

# Disable Software Flow Control (XON/XOFF flow control)
stty -ixon

# Heroku
# heroku autocomplete:script bash
