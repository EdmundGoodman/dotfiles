#!/bin/bash

#Aliases for common directories
alias home="cd ~"
alias root="cd /"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias documents="cd ~/Documents"

alias l50="ssh nf-test100"
alias l50b="ssh nf-test111"

#Aliases for ls
alias ll="ls -alFh"
alias la="ls -A"
alias lt="ls --human-readable --size -1 -S --classify"
alias l="ls -CF"

# Use vim instead of vi
alias vi="vim"
# Always run du in human readable mode
alias du="du -h"
# Print the shell level
alias shlvl="echo $SHLVL"
# Render images in the terminal
alias icat="imgcat"
# Pipe to clipboard
alias clipboard="pbcopy"
alias cb="pbcopy"

# Alias neofetch
alias neofetch="fastfetch"
# Alias inkscape
alias inkscape="/Applications/Inkscape.app/Contents/MacOS/inkscape"
# Alias jupyter notebook
alias jupyter="uv tool run jupyter"
# Alias firefox
alias firefox="open -a /Applications/Firefox.app"
# Alias preview
alias preview="open -a Preview"
# Alias pycharm
alias pycharm="open -a /Applications/PyCharm.app/Contents/MacOS/pycharm"


# Alias listing mounted drives
alias lsmnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
# Alias large file copy with progress bar
alias cpv="rsync -ah --progress"

# Function to the current directory to a target when it contains many small files
#   usage: cpwd TARGET_DIRECTORY
cpwd() { mkdir -p "$1"; tar cf - . | pv | (cd "$1"; tar xvf -); }

# Function to diff the text contents of two pdf files
#   usage: pdfdiff ORIGINAL.pdf NEW.pdf
pdfdiff() { vimdiff <(pdftotext $1 -) <(pdftotext $2 -) }

# Force kill stopped jobs (TODO: This may be broken for zsh)
#   usage: fk
fk() { kill -9 $(jobs -p | tr -d '+-' | awk '/suspend/{print $2}'); }

# Helpful tmux commands
alias tms="tmux new -As0"
alias tmd="tmux detach"
alias tmls="tmux ls"

## Alias to run an interactive Haskell shell via stack, to avoid multiple GHC installs, without loading any packages
# alias ghci="stack exec -- ghci"

