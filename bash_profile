if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
# add local specific profile settings, if needed
if [ -f ~/.bash_profile.local ]; then
    . ~/.bash_profile.local
fi
