# .zprofile
# - for environment variables, configuration

# Set PATH, MANPATH, etc., for Homebrew, if installed
eval "$(/opt/homebrew/bin/brew shellenv)"

# Setting PATH for Python 3.11
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH

# add local specific profile settings, if needed
if [ -f ~/.zprofile.local ]; then
    source ~/.zprofile.local
fi
