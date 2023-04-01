alias ezsh='vi ~/.zshrc'
alias rzsh='source ~/.zshrc'
alias csh='function _csh(){touch $1; chmod +x $1; vi $1}; _csh'
alias alrg='function _alrg(){alias | rg $1}; _alrg'
alias alfzf='alias | fzf'
alias apts='function _apts(){apt search $1 | rg -A 2 ".*$1.*/focal"}; _apts'
alias kbfzf='source $DOTFILES_ROOT/fzf/key-binding.zsh'
alias xclip='xclip -selection clipboard'
alias copyfile='function _copyfile(){mkdir -p $(dirname "$2") && cp "$1" "$2";}; _copyfile'
alias diagram='function _diagram(){npx nodemon -w "$1" -x "python" "$1";}; _diagram'
alias ack='ack -S'
alias newest='ls -1Lct | head -n 1'
alias newestrm="ls -1Lct | head -n 1 | xargs -p rm"
alias newesto="ls -1Lct | head -n 1 | xargs xdg-open"
