# vim
alias vi='nvim'

# history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY
setopt share_history
setopt hist_ignore_all_dups

# git
source ~/src/github.com/olivierverdier/zsh-git-prompt/zshrc.sh
# Default values for the appearance of the prompt. Configure at will.
# ZSH_THEME_GIT_PROMPT_PREFIX="("
# ZSH_THEME_GIT_PROMPT_SUFFIX=")"
# ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
# ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg[green]%}"
# ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}%{+%G%}"
# ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
# ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[green]%}%{*%G%}"
# ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
# ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}%{✔%G%}"

# PROMPT style
PROMPT='
[%{$fg[green]%}%n%{$reset_color%}] %{$fg[yellow]%}%~%{$reset_color%} $(git_super_status)
\$ '

# completions
if [ ! -e ~/.zsh/completion ]; then
  # https://docs.docker.com/compose/completion/
  mkdir -p ~/.zsh/completion
fi

## tab completion
autoload -U compinit

## docker-compose completion
if [ ! -e ~/.zsh/completion/_docker-compose ]; then
  # https://docs.docker.com/compose/completion/
  curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose
fi
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit

compinit -i

# ls color
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
alias ls="ls -GF"

# grep color
alias grep='grep --color=auto'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"
