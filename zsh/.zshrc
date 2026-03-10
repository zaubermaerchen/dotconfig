path=(
    $HOME/.local/bin
    $path
)
typeset -gU path

setopt hist_ignore_all_dups  # 重複するコマンド行は古い方を削除
setopt hist_ignore_dups      # 直前と同じコマンドラインはヒストリに追加しない
setopt share_history         # コマンド履歴ファイルを共有する
autoload -Uz compinit
compinit

[ -f "$HOMEBREW_PREFIX/bin/brew" ] && eval "$($HOMEBREW_PREFIX/bin/brew shellenv)"
type sheldon &> /dev/null && eval "$(sheldon source)"
type starship &> /dev/null && eval "$(starship init zsh)"
type zoxide &> /dev/null && eval "$(zoxide init zsh)"
type mise &> /dev/null && eval "$(mise activate zsh)"

function sk-select-history() {
    BUFFER=$(history -n -r 1 | sk --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N sk-select-history
bindkey '^h' sk-select-history

[ -f "$XDG_CONFIG_HOME/zsh/.zshrc.local" ] && source "$XDG_CONFIG_HOME/zsh/.zshrc.local"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/nocturne/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
