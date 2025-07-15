# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
alias dnfupd='sudo dnf update'
alias dnfupg='sudo dnf remove'
alias dnfin='sudo dnf install'
alias flpupd='flatpak update'
alias flprv='flatpak remove'
alias md='x(){ mkdir "$1"; cd "$1"; }; x'
# User specific environment and startup programs
