# fa - show alias
# requirements: fzf, bat
alias fa='function_fa'
function function_fa() {
  alias >| ~/.alias_list
  local selected_alias=$(alias | sed -e 's/=.*$//' | fzf --prompt="alias > " --preview-window=60%:wrap --preview "~/.zsh.d/scripts/show_source.zsh {} | batcat -l sh --color=always --style=grid")
  print -z $selected_alias
}