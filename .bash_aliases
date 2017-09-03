
#===========================================================
#
# ALIAS & FUNCIONS
#
#===========================================================

#-------------
# Presonnal Alias
#-------------

alias ll='ls -alF'									# Show all
alias la='ls -A'									# Show all in current directory
alias l='ls -CF'									# Show files in current directory
alias rm='rm -iv'									# Preferred 'rm' implementation
alias cp='cp -iv'									# Preferred 'cp' implementation
alias mv='mv -iv'									# Preferred 'mv' implementation
alias mkdir='mkdir -pv'								# Preferred 'mkdir' implementation

#-------------
# Aliases moves
#-------------

alias dp='pwd | xclip'
alias cls='clear && ls'
alias pd='cd $(xclip -o) && clear && ls'
alias ..='cd ../'									# Go back 1 directory level (fast typers)
alias ...='cd ../../'								# Go back 2 directory level (fast typers)
alias .3='cd ../../../'								# Go back 3 directory level (fast typers)
alias .4='cd ../../../../'							# Go back 4 directory level (fast typers)
alias .5='cd ../../../../../'						# Go back 5 directory level (fast typers)
alias .6='cd ../../../../../../'					# Go back 6 directory level (fast typers)
alias edit='subl'									# edit:		Opens any file in sublime editor
alias ~='cd ~'										# ~:		Go Home
alias opdf="evince"									# opdf for open a .pdf file
mcd () { mkdir -p "$1" && cd "$1"; }				# mcd:		Makes new Dir and jumps inside
alias mesu='ssh -X ythier@mesu.dsi.upmc.fr'			# Access to MeSu
alias qtdesigner="/usr/lib/x86_64-linux-gnu/qt5/bin/designer"

#-------------
# Environment git
#-------------

alias g="git"
alias gps="git push"
alias gpl="git pull"
alias grm="git remote"
alias gcl="git clone"
alias grb="git rebase"
alias gss="git stash"

#-------------
# Environment configuration
#-------------

# Set Path
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
