if [ -f ~/.zshrc ] ; then
  . ~/.zshrc
fi

# color
export TERM=xterm-256color

# edit
export WORDCHARS="*?_-.[]~=&!#$%^(){}<>"

# go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# ruby
eval "$(rbenv init -)"

# python
eval "$(pyenv init -)"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# haskell
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.cabal/bin

# clojure
export PATH=$PATH:~/.local/share/nvim/plugged/vim-iced/bin
