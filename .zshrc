export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

source ~/.oh-my-zsh/plugins/git/git.plugin.zsh

# SPACESHIP THEME IS BEST THEME
source /opt/homebrew/opt/spaceship/spaceship.zsh

plugins=(git)

# z... jump around
. $(brew --prefix)/etc/profile.d/z.sh

# Usseful aliases
alias p=pnpm

# no swearing
eval $(thefuck --alias damnit)

# Wrap brew-file
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

source /Users/lukedeniston/.docker/init-zsh.sh || true # Added by Docker Desktop

source ~/completion-for-pnpm.bash
. "/Users/lukedeniston/.deno/env"

eval "$(fnm env --use-on-cd --shell zsh)"
