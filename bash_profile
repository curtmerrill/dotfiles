# Homebrew path
export PATH=/usr/local/bin:$PATH

# Virtualenvwrapper
source /usr/local/bin/virtualenvwrapper_lazy.sh

# Postgres shortcuts
alias pgdown='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pgup='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'

# Convenience aliases
alias la="ls -aG"
alias ll="ls -lG"
alias killpyc="find . -name '*.pyc' -delete"

