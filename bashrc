export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend
shopt -s cmdhist
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls[bf]g:exit"

# Aliases
alias gl="git log --oneline"
alias myip="curl http://ipecho.net/plain; echo"
alias pull-rc="git -C ~/.rc pull --recurse-submodules && . ~/.bashrc"
alias vimrc="vim ~/rc/.bashrc; . ~/rc/.bashrc"

# Functions
function up() {
  for x in $(seq 1 $1); do
    cd ..
  done
}

function extract() {
  if [ -z "$1" ]; then
    echo "Usage: extract <path/file_name.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
  else
    if [ -f "$1" ]; then
      case $1 in
        *.tar.bz2)   tar xvjf ../$1    ;;
        *.tar.gz)    tar xvzf ../$1    ;;
        *.tar.xz)    tar xvJf ../$1    ;;
        *.lzma)      unlzma ../$1      ;;
        *.bz2)       bunzip2 ../$1     ;;
        *.rar)       unrar x -ad ../$1 ;;
        *.gz)        gunzip ../$1      ;;
        *.tar)       tar xvf ../$1     ;;
        *.tbz2)      tar xvjf ../$1    ;;
        *.tgz)       tar xvzf ../$1    ;;
        *.zip)       unzip ../$1       ;;
        *.Z)         uncompress ../$1  ;;
        *.7z)        7z x ../$1        ;;
        *.xz)        unxz ../$1        ;;
        *.exe)       cabextract ../$1  ;;
        *)           echo "extract: '$1' - unknown archive method" ;;
      esac
    else
      echo "$1 - file does not exist"
    fi
  fi
}

if { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
  PS1="\w "
fi
