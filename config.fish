if test -n "$IN_NIX_SHELL"
    set -gx TMPDIR /tmp
end

source ~/.config/fish/functions/neovim.fish
source ~/.config/fish/user_variables.fish
source ~/.config/fish/abbreviations.fish
source ~/.config/fish/fish_aliases

# pnpm
set -gx PNPM_HOME "/home/daysling/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end

# pnpm end
status is-interactive; and begin
    set fish_tmux_config /home/daysling/.config/tmux/tmux.conf
    set fish_tmux_unicode true
    set fish_tmux_autostart true
end

#set -Ux PYENV_ROOT $HOME/.local/share/pyenv
set -U fish_user_paths $PYENV_ROOT/shims $fish_user_paths
# Load pyenv automatically by appending
# the following to ~/.config/fish/config.fish:
set -g fish_abbreviation_max_suggestions 0

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish
mise activate fish | source
