export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export EDITOR=vim

export HISTFILE="$XDG_CONFIG_HOME/zsh/.zsh_history"
export HISTSIZE=100000
export SAVEHIST=100000

[ -f "$XDG_CONFIG_HOME/zsh/.zshenv.local" ] && source "$XDG_CONFIG_HOME/zsh/.zshenv.local"
