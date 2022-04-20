# BASIC CONFIG
set fish_greeting
fish_config theme choose Nord

# ENV
set TERM alacritty
set PATH ""
set EDITOR nvim
set VISUAL emacs

fish_add_path -m /bin/ /sbin/ "$HOME/.local/bin/" /usr/local/bin
fish_add_path -v ".cargo/bin/" ".ghcup/bin/" projects/porth/ ".fasm/" miniconda3/bin/ ".emacs.d/bin/" ".symfony/"

#
eval "$(zoxide init fish)"

# ALIASES
source "$HOME/.alias"
nvm use 16 --silent

colorscript random
starship init fish | source
