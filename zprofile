# .zprofile
# - for environment variables, configuration
# Set PATH, MANPATH, etc., for macOS machines
eval "$(/opt/homebrew/bin/brew shellenv)"


# add local specific profile settings, if needed
if [ -f ~/.zprofile.local ]; then
    source ~/.zprofile.local
fi
