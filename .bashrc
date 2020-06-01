# Powerline Prompt
GOPATH=$HOME/go

function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -alternate-ssh-icon -max-width 50 -hostname-only-if-ssh -colorize-hostname -cwd-max-depth 3 -shell bash)"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
export PROMPT_DIRTRIM=2

# PATH
# dynamically update path on directory change
export PATH="$PATH:~/.bin:node_modules/.bin"

# aliases
alias refreshenv="source ~/.bashrc"
alias sudo="sudo "
alias vim="nvim"
alias vf="vifm"
alias ls="ls -lah --color=auto"
alias commit="git add -A; git commit -m"
# check if on windows
if grep -q Microsoft /proc/version; then
    alias start="cmd.exe /C"
fi

# NVM tools
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
