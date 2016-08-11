parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PATH=$HOME/.cabal/bin:$PATH
export PS1="\n\033[31m[\@] \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[30;1m\]\w\[\033[31m\$(parse_git_branch)\]\[\033[00m\]\n \$ >> "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
