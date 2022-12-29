export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

plugins=(git)

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# z... jump around
. $(brew --prefix)/etc/profile.d/z.sh

# Usseful aliases
alias dc=docker-compose
dockerenter() {
  docker exec -it "$1" /bin/bash -c "stty cols $COLUMNS rows $LINES && bash";
}
alias dockenter=dockerenter

# no swearing
eval $(thefuck --alias damnit)

# GFM specific
export NEXT_SKIP_TRANSLATIONS=0

# Wrap brew-file
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# SPACESHIP THEME IS BEST THEME
source /opt/homebrew/opt/spaceship/spaceship.zsh
