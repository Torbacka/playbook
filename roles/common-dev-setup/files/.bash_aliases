#!/bin/bash

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias docker-remove='docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")'

stopvpn () {
        expressvpn disconnect
        echo "nameserver 8.8.8.8 8.8.4.4" | sudo tee -a /etc/resolv.conf
}
alias vpn='expressvpn connect smart'
alias erroronstart='grep "fatal" /var/log/boot.log'
