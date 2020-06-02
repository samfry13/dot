# Promptline
source ~/.config/promptline/.promptline.sh

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
