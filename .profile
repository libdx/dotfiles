# MacVim
export PATH=$PATH:/Applications/MacVim.app/Contents/bin

# Lang
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Prompt String
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function parse_git_dirty {
  git diff --quiet || echo " 𐄂"
}

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
    local short_branch=$(limit_string $branch 30 "…")
    echo " ($short_branch$(parse_git_dirty))"
  fi
}

function proml {
  local  LIGHT_RED="\[\033[1;31m\]"
  local  NORMAL="\[\033[00m\]"
  local  BOLD="\[\033[1m\]"
  local  OFF="\[\033[m\]"
  #PS1="${BOLD}[\W${LIGHT_RED}$(parse_git)${OFF}${BOLD}]\$${OFF} "
  #PS1="${BOLD}\W${LIGHT_RED}$(parse_git)${OFF}${BOLD} ➜${OFF} "
  PS1="${BOLD}\W${LIGHT_RED}$(parse_git)${OFF}${BOLD} ->${OFF} "
  PS2="${BOLD}>>${OFF} "
}

function git_status_multi_select() {
    git st --porcelain | fzf -m | sed -e "s/^ . //g"
}

function git_add_multi_select() {
    git add $(git_status_multi_select)
}

# Ѧ Ѩ 

PROMPT_COMMAND=proml

# Aliases
alias ls="ls -G"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -a"
alias week="date +%V"
alias grep="grep --color=auto"

## Git
alias co="git checkout"
alias st="git status"
alias ci="git commit"
alias log="git log"
alias pull="git pull"
alias push="git push"
alias add="git_add_multi_select"
alias giff="git diff"
alias ciff="git diff --cached"
alias gsu="git submodule update"

## JavaScript
alias y="yarn"

# Completions
source ~/git-completion.bash

# chruby
#source /opt/boxen/homebrew/opt/chruby/share/chruby/chruby.sh
#source /opt/boxen/homebrew/opt/chruby/share/chruby/auto.sh

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Haskell
#eval "$(stack --bash-completion-script stack)"
