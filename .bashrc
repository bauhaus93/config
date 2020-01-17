
# ~/.bashrc
#

get_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

EDITOR=vim; export EDITOR
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig; export PKG_CONFIG_PATH

alias ls='ls --color=auto -lh'
alias ..='cd ..'
alias ...='cd ../..'
alias cdp='cd ~/Dokumente/Programmieren'
alias cdd='cd ~/Downloads'
alias cdr='cd ~/Dokumente/Programmieren/rust'
alias cdba='cd ~/Dokumente/Programmieren/BA'
alias cdto='cd ~/Dokumente/Programmieren/BA/fork/libelektra/src/plugins/toml'
alias antlr='java -Xmx500M -cp "/usr/share/java/antlr-4.7.2-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "/usr/share/java/antlr-4.7.2-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'
alias gc-elektra='git clone https://github.com/ElektraInitiative/libelektra.git'
alias gc-lcdproc='git clone https://github.com/ElektraInitiative/lcdproc.git'
alias rbg='feh --bg-fill --randomize ~/Bilder/background'
alias irssi='~/.run_irssi.sh'

BLUE="\[\033[0;34m\]"
LIGHTBLUE="\[\033[1;34m\]"
GREEN="\[\033[1;32m\]"
RESET="\[\033[0m\]"
PS1="$BLUE\u@\h $LIGHTBLUE\W$GREEN\$(get_git_branch)$RESET \$ "; export PS1
