
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

EDITOR=vim; export EDITOR
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig; export PKG_CONFIG_PATH

alias ls='ls --color=auto'
alias cdp='cd ~/Dokumente/Programmieren'
alias cdr='cd ~/Dokumente/Programmieren/rust'
alias cdba='cd ~/Dokumente/Programmieren/BA'
alias antlr='java -Xmx500M -cp "/usr/share/java/antlr-4.7.2-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "/usr/share/java/antlr-4.7.2-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'

BLUE="\[\033[0;34m\]"
LIGHTBLUE="\[\033[1;34m\]"
RESET="\[\033[0m\]"
PS1="$BLUE\u@\h $LIGHTBLUE\W$RESET \$ "; export PS1
