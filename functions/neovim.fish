alias nvim_kitty='nvim_kitty'
alias nvim='nvim_kitty'

function nvim --description 'alias nvim=nvim_kitty'
    nvim_kitty $argv
end

function nvim_kitty --description 'Open Neovim with paddings'
     /bin/nvim $argv;
end
