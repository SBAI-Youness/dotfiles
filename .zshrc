export PATH="/home/youness_sbai/.nimble/bin:/home/youness_sbai/.local/bin:/home/youness_sbai/bin:/home/youness_sbai/.local/bin/:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/var/lib/snapd/snap/bin"

# This is for oh-my-posh if you wanna use it
#eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/illusi0n.omp.json)"

#PROMPT="[%n@%m %~]\$ "
PROMPT="[%n@%F{red}%m%f %~]\$ "

plugins=( 
    git
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
)

bindkey "^[[4~" end-of-line
bindkey "^[[5~" beginning-of-history
bindkey "^[[6~" end-of-history
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

bindkey '^[[3~' delete-char
bindkey '^[[3;5~' kill-word
bindkey '^H' backward-kill-word


source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

stty -ixon

source <(fzf --zsh)

alias cat="bat"
alias vi='nvim'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias t='tree'
alias o='xdg-open'
alias timer='bash ~/.config/i3/scripts/utilities/timer.sh'
alias f='feh --scale-down -Z'
alias sudoku="cd /home/youness_sbai/GitHub/mine/Sudoku_Game/build/ && ./main"
alias webstart='sudo systemctl start httpd mysqld'
alias webstop='sudo systemctl stop httpd mysqld'
alias sowon='/home/youness_sbai/GitHub/cloned/sowon/sowon'

# Show Wi-Fi networks
alias wifi="nmcli dev wifi list" # wifi
# List network devices
alias netdev="nmcli device status" # netdev
# Connect to a Wi-Fi network
alias wificon="nmcli dev wifi connect" # wificon MySSID password mypassword
# Disconnect Wi-Fi
alias wifidown="nmcli radio wifi off" # wifidown
# Enable Wi-Fi
alias wifiup="nmcli radio wifi on" # wifiup
# List saved connections
alias netlist="nmcli connection show" # netlist
# Connect to a saved network
alias netup="nmcli connection up" # netup my-home-wifi
# Bring a connection down
alias netdown="nmcli connection down" # netup my-home-wifi
# Auto-rescan Wi-Fi
alias wifiscan="nmcli dev wifi rescan && nmcli dev wifi list" # wifiscan

. "$HOME/.cargo/env"
export PATH="/home/youness_sbai/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/youness_sbai/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
