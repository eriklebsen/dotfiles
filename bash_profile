# Simpler bash prompt in Terminal.app
# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37
promptColor="\[\033[1;34m\]"
endColor="\[\033[0m\]"
export PS1="$promptColor\w$ $endColor" 

# Enable syntax highlighting for commands like `ls` and such
alias ls="ls -G"

# Bash completion (installed via Homebrew, but not Homebrew's completion)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

# PATH ammendment to put Homebrew-installed apps in front of system-provided ones
homebrew=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin
export PATH=$homebrew:$PATH