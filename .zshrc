export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# SPACESHIP THEME IS BEST THEME
source $HOMEBREW_PREFIX/opt/spaceship/spaceship.zsh

# z... jump around (zoxide, imported from z.sh)
eval "$(zoxide init zsh --cmd z)"

# fuzzy ctrl+r history, ctrl+t files
source <(fzf --zsh)

# Usseful aliases
alias p=pnpm

# Wrap brew-file (only record packages installed on purpose, not dependencies)
export HOMEBREW_BREWFILE_ON_REQUEST=1
if [ -f $HOMEBREW_PREFIX/etc/brew-wrap ];then
  source $HOMEBREW_PREFIX/etc/brew-wrap
fi

source ~/completion-for-pnpm.bash

eval "$(fnm env --use-on-cd --shell zsh)"

path+=($HOME/.local/bin/)
