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

# Utilities
draw_bar() {
    export BARSTRING=""
    for (( i = 0; i < $COLUMNS; i++ ))
    do
        export BARSTRING="$BARSTRING="
    done
    echo $BARSTRING
}
alias bar="draw_bar"

# Custom prompt
. ~/.bash_prompt.sh
