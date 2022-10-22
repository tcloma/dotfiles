if status is-interactive
    # Commands to run in interactive sessions can go here
end

# start with starship
starship init fish | source

# empty start message
set fish_greeting ""

# pnpm
set -gx PNPM_HOME "/home/tcloma/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH

#rust
set -gx PATH "$HOME/.cargo/bin" $PATH;

# node
set -gx PATH "$HOME/.config/nvim" $PATH;

# aliases
alias pp="pnpm"
alias ls='exa --icons'
alias lst='ls --tree --level=2 -Inode_modules --sort=ext'

# launch with node.js
nvm use lts > /dev/null

function storePathForWindowsTerminal --on-variable PWD
    if test -n "$WT_SESSION"
      printf "\e]9;9;%s\e\\" (wslpath -w "$PWD")
    end
end