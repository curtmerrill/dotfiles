# .zshrc - For *interactive* uses -- e.g. aliases, prompts, etc.

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"

base16_solarized-light

alias ls="ls -GF"
alias ll="ls -l"
alias la="ll -a"
alias beep="echo -e \"\a\""

alias gfp="git fetch && git pull"

eval "$(direnv hook zsh)"
. "$HOME/.cargo/env"

eval "$(starship init zsh)"

# Load local-specific .zshrc if available
if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi
