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

#fastfetch

source <(fzf --zsh)

alias cat="bat"
alias vi='nvim'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias t='tree'
alias timer='bash ~/.config/i3/scripts/utilities/timer.sh'

. "$HOME/.cargo/env"
