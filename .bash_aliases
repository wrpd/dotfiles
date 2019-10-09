alias editalias="vim ~/.bash_aliases"
alias run="./a.out"
alias c="clear"
alias C="clear"
alias e="exit"
alias E="exit"
alias cp="cp -v"
alias cd..="cd .."

# Functions

tmpc() {
  rm -rf ~/temp
  mkdir ~/temp
  echo "temp folder cleared..."
}
