# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# ts is for ble.sh
source ~/.local/share/blesh/ble.sh

# ts is for bash-completion
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion]; then
	        . /etc/bash_completion
	fi
fi	

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

alias dnfupd='sudo dnf update && sudo dnf upgrade'
alias flpupd='flatpak update'
alias dnfinf='sudo dnf install'
alias shd='shutdown now'
alias ssh379="ssh -p 379 superuser@192.168.1.79"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

eval "$(starship init bash)"

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
