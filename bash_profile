# Homebrew path
export PATH=/usr/local/bin:$PATH

# Postgres.app path
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH

# VirtualEnvWrapper
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Convenience aliases
alias ls="ls -G"
alias la="ls -aG"
alias ll="ls -lG"
alias killpyc="find . -name '*.pyc' -delete"

# Custom prompt
. ~/.bash_prompt.sh

# Device specific settings
source ~/.bash_local
