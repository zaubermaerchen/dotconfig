path=(
    $HOME/bin
	$path
)
typeset -gU path

setopt hist_ignore_all_dups  # 重複するコマンド行は古い方を削除
setopt hist_ignore_dups      # 直前と同じコマンドラインはヒストリに追加しない
setopt share_history         # コマンド履歴ファイルを共有する
autoload -Uz compinit
compinit

[ -f "$HOMEBREW_PREFIX/bin/brew" ] && eval "$($HOMEBREW_PREFIX/bin/brew shellenv)"
eval "$(sheldon source)"
eval "$(starship init zsh)"

function sk-select-history() {
    BUFFER=$(history -n -r 1 | sk --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N sk-select-history
bindkey '^h' sk-select-history

[ -f "$XDG_CONFIG_HOME/zsh/.zshrc.local" ] && source "$XDG_CONFIG_HOME/zsh/.zshrc.local"
