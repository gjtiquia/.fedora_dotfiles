# .bashrc.d rc files are loaded in alphanumeric order
# can refactor later and split into sensible files (like env -> aliases -> functions -> specific app setups)

export EDITOR=vim
# export MANPAGER='nvim +Man!'

alias c=clear
alias q=exit
alias v=vim
alias lg=lazygit

alias open=xdg-open

# fzf setup
eval "$(fzf --bash)"

# zoxide setup
eval "$(zoxide init bash)"

# yazi setup
function y() {
	local tmp cwd; tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd" || builtin true
	command rm -f -- "$tmp"
}

## cargo setup
. "$HOME/.cargo/env"
