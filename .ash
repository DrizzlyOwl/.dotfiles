########################
# SSH Agent keychain   #
########################
eval `keychain --eval --agents ssh --inherit any id_rsa`

########################
# ZSH extensions       #
########################
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

########################
# GPG Key tools        #
########################
export GPG_TTY=$(tty)

########################
# WP Deploy shortcuts  #
########################
deploy () {
    bundle exec cap $1 deploy
}
rollback () {
    bundle exec cap $1 deploy:rollback
}
pull () {
    bundle exec cap $1 db:pull && bundle exec cap $1 uploads:pull
}

########################
# PATH edits           #
########################
export PATH="/Applications/MAMP/bin/php/php7.3.24/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/usr/local/opt/python/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

########################
# Preferred editor     #
########################
export EDITOR=nano

########################
# Aliases              #
########################
alias htdocs="cd /Volumes/ASH\ USB\ SSD/"
