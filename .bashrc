# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

export HISTCONTROL=ignoreboth:erasedups
shopt -u mailwarn
unset MAILCHECK

shopt -s histappend histreedit histverify
PROMPT_COMMAND='history -a'

export HISTSIZE=10000
export HISTFILESIZE=20000
#export IGNOREEOF=100

shopt -s autocd
shopt -s checkwinsize
shopt -s cmdhist
shopt -s cdspell
shopt -s cdable_vars
shopt -s checkhash
shopt -s checkjobs
shopt -s dirspell
shopt -s histreedit
shopt -s huponexit
shopt -s nocaseglob
shopt -s sourcepath
shopt -s no_empty_cmd_completion
shopt -s extglob

export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTIGNORE='&:/*:.*:[bf]g:exit:reboot:clear:pwd:cd:cl:l[.sla]:ps:history*:pacman*:yay*:w:who*:top:htop:kill*:pkill*:uname*:source*'

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

alias mv='mv -i'
alias rm='rm -i'
alias la='ls -la'
