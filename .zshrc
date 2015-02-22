# git
source ~/github/zsh-git-prompt/zshrc.sh

# PROMPT style
PROMPT='
[%{$fg[green]%}%n@%m%{$reset_color%}] %{$fg[yellow]%}%~%{$reset_color%} $(git_super_status)
\$ '

# tab completion
autoload -U compinit
compinit

# ls color
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
alias ls="ls -GF"

# grep color
alias grep='grep --color=auto'
