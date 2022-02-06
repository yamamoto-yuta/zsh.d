# fch - show command history
# requirements: fzf
alias fch='function_fch'
function function_fch() {
  local BUFFER=$(history -n -r 1| fzf --no-sort +m --query "$LBUFFER" --prompt="History > ")
  print -z $BUFFER
}