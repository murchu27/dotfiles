# redefine sudo as an alias,
# so that other aliases may be passed to it
# see https://askubuntu.com/q/22037
# and https://stackoverflow.com/q/37209913
alias sudo='sudo '

alias vim=nvim
alias v=vim
alias vi=vim
alias misnomer='mount -t drvfs d: /mnt/d'

# alias for managing dotfiles
# through a bare git repository at ~/.dotfiles.git
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
