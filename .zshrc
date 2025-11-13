export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

source ~/.oh-my-zsh/plugins/git/git.plugin.zsh

# SPACESHIP THEME IS BEST THEME
source /opt/homebrew/opt/spaceship/spaceship.zsh

plugins=(git)

# z... jump around
. $(brew --prefix)/etc/profile.d/z.sh

# Usseful aliases
alias dc=docker-compose
dockerenter() {
  docker exec -it "$1" /bin/bash -c "stty cols $COLUMNS rows $LINES && bash";
}
alias dockenter=dockerenter

alias p=pnpm

# no swearing
eval $(thefuck --alias damnit)

# GFM specific
export NEXT_SKIP_TRANSLATIONS=0
alias blarg='(cd ~/workspace/docker-services; ./scripts/login.sh ecr_user)'
alias token='blarg | grep "s\..*" -o > .vault-token'
alias startup='(cd ~/workspace/local-proxy && dc up -d) && (cd ~/workspace/ssr-frontend/apps/next-app && token && dc up -d)'

# Android Development
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jbr/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Wrap brew-file
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

source /Users/lukedeniston/.docker/init-zsh.sh || true # Added by Docker Desktop
export PATH="/opt/homebrew/opt/ruby/bin:/Users/lukedeniston/bin:$PATH"
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
source ~/completion-for-pnpm.bash
. "/Users/lukedeniston/.deno/env"

eval "$(fnm env --use-on-cd --shell zsh)"

# Created by `pipx` on 2025-10-05 23:52:04
export PATH="$PATH:/Users/lukedeniston/.local/bin"
