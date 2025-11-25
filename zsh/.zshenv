export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export EDITOR=vim

export HISTFILE="$XDG_CONFIG_HOME/zsh/.zsh_history"
export HISTSIZE=100000
export SAVEHIST=100000

# Node
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NPM_CONFIG_PROGRESS=false

# Python
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
export PYTHON_EGG_CACHE="$XDG_CACHE_HOME/python-eggs"
export POETRY_HOME="$XDG_DATA_HOME/poetry"

# Rust
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# Go
export GOPATH="$XDG_DATA_HOME/go"

# GnuPG
export GNUPGHOME="$XDG_DATA_HOME/gnupg"


[ -f "$XDG_CONFIG_HOME/zsh/.zshenv.local" ] && source "$XDG_CONFIG_HOME/zsh/.zshenv.local"
