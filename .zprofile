if [ -f ~/.zshrc ] ; then
  . ~/.zshrc
fi

# history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY
setopt share_history
setopt hist_ignore_all_dups

# ruby
eval "$(rbenv init -)"

# packer
export PATH=$PATH:/usr/local/packer
