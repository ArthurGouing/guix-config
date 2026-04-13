

# Commands that should be applied only for interactive shells.
[[ $- == *i* ]] || return

HISTFILESIZE=100000
HISTSIZE=10000

shopt -s histappend
shopt -s extglob
shopt -s globstar
shopt -s checkjobs

alias -- cat='mcat --img-height 95% --ls-height 4c --kitty'
alias -- egrep='egrep --color=auto'
alias -- fgrep='fgrep --color=auto'
alias -- grep='grep --color=auto'
alias -- l='mycat ls'
alias -- la='ls -lA'
alias -- ll='ls -lF'
alias -- ls='ls --color=auto'
alias -- lsi='mcat --img-height 95% --ls-height 4c --kitty ls'
alias -- mycat='mcat --img-height 95% --ls-height 4c --kitty'

# if [[ ! -v BASH_COMPLETION_VERSINFO ]]; then
#   . "/nix/store/8lpwn6d9k2j1dwdgkidhjqjy3imfw49f-bash-completion-2.17.0/etc/profile.d/bash_completion.sh"
# fi

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

PATH=$PATH:/home/arthos/.local/bin


# We need to load logging module early in order to be able to log
source "./.bash_lib/log.bash"

# custom Bash it integration

source ".bash_lib/utilities.bash"
source ".bash_lib/preexec.bash"
source ".bash_lib/colors.bash"
source ".bash_lib/command_duration.bash"

source '.bash_plugins'


source '.bash_theme/base.theme.bash'
source '.bash_theme/githelpers.theme.bash'
source '.bash_theme/bash_theme'

