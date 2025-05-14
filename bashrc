alias ls="ls -GF"
alias ll="ls -l"
alias la="ll -a"

eval "$(starship init bash)"

# add local specific profile settings, if needed
if [ -f ~/.bashrc.local ]; then
    . ~/.bashrc.local
fi
