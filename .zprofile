if [ -f ~/.zshrc ] ; then
  . ~/.zshrc
fi

# color
export TERM=xterm-256color

# history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY
setopt share_history
setopt hist_ignore_all_dups

# edit
export WORDCHARS="*?_-.[]~=&!#$%^(){}<>"

# go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

# homebrew
PATH=$(echo $PATH | sed 's/\/usr\/local\/bin://g' | sed 's/:\/usr\/local\/bin$//g')
export PATH=/usr/local/bin:$PATH

# ruby
eval "$(rbenv init -)"

# python
eval "$(pyenv init -)"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# haskell
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.cabal/bin
