##
# Things the user might wish to set.
export USER_PATH="." # Extra paths.
export EDITOR=vi				# Preferred editor.
export PRINTER=lp				# Preferred printer.
export NNTPSERVER=dummynews.net		# Preferred news server.


umask 022                        # no write by group or other
export autologout=0              # disable autologout
export FIGNORE=".o"              # don't complete .o files
export HISTFILE=~/.bash_history  # history file
export HISTFILESIZE=500          # history file size
export HISTSIZE=128              # save last 128 commands
export ignoreeof=10              # disable ^D for logout (up to 10)
set -C                           # disable redirect overwrite
set -b                           # enable immediate job notify
#export PS1="\h:\w > "            # shell prompt format

export PATH=$USER_PATH:$PATH:

source ~/.dots/shortcuts
source ~/.dots/gitcuts


################
## Set Prompt ##
################
RED='\e[0;31m'
BLUE='\e[0;34m'
NO_COLOUR='\e[0m'
HOST=`/bin/hostname`
SHOST=${HOST: -10}
PS1="$SHOST:\W\$"
#PS1="$BLUE[$RED\`echo \$CLONE\`$BLUE]$NO_COLOUR\u@\h:\W\$ "
