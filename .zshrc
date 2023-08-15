
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

HIST_STAMPS="dd/mm/yyyy"


# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# NVM
source /usr/share/nvm/init-nvm.sh

# Aliases
alias neo="neofetch --disable 'model' 'theme' 'icons'"

export PATH="$PATH:$HOME/.local/bin:$HOME/eww/target/release"

neo
