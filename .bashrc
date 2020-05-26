# prompt
PS1="\[\e[1;34m\]\u@\H\[\e[0m\]:\[\e[32m\]\w\[\e[91m\]\$(__git_ps1)\[\e[0m\] > "
export PROMPT_DIRTRIM=2

# PATH
export PATH=$PATH:~/.bin

# aliases
alias refreshenv="source ~/.bashrc"
alias vim="nvim"
alias vf="vifm"
alias ls="ls -lah --color=auto"
alias commit="git add -A; git commit -m"
# check if on windows
if grep -q Microsoft /proc/version; then
    alias start="cmd.exe /C"
fi

