if status is-interactive
    set -g fish_greeting
    starship init fish | source
    zoxide init fish | source
    fish_config theme choose catppuccin-mocha

    # Aliases
    alias cat="bat --paging=never" # no paging to prevent messing with scripts when piped, e.g. `cat test | wc -m`
    #alias cd="z" # or use fisher plugin?
    #alias grep="rg" # messy, different flags
    #alias find="fd" # messy, different flags
    
    alias ls="eza --icons=auto --group-directories-first"
    alias la="eza -a --icons=auto --group-directories-first"
    alias ll="eza -lah --icons=auto --group-directories-first"
    alias lt="eza --tree --level=2 --icons=auto"
    alias cl="clear"
end

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/ben/.lmstudio/bin
# End of LM Studio CLI section

