alias ezsh='vi ~/.zshrc'
alias szsh='source ~/.zshrc'
alias mksh='function _mksh(){touch $1; chmod +x $1; vi $1}; _mksh'
alias aliasf='alias | fzf'
alias aliass='function _aliass(){alias | rg $1}; _aliass'
alias apts='function _apts(){apt search $1 | rg -A 2 ".*$1.*/focal"}; _apts'
alias sfzf='source $DOTFILES_ROOT/fzf/key-binding.zsh'
alias xclip='xclip -selection clipboard'
alias cpmk='function _cpmk(){mkdir -p $(dirname "$2") && cp "$1" "$2";}; _cpmk'
alias pymon='function _pymon(){npx nodemon -w "$1" -x "python" "$1";}; _pymon'
alias nw='/usr/bin/ls -1Lct | head -n 1'
alias nwrm="/usr/bin/ls -1Lct | head -n 1 | xargs -p rm"
alias nwo="/usr/bin/ls -1Lct | head -n 1 | xargs -d '\n' xdg-open"
alias gsa='git submodule add'
alias o='xdg-open'
