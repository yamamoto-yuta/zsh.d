# fa - show alias
# requirements: fzf, bat
alias fa='function_fa'
function function_fa() {
  alias >| ~/.alias_list
  if [[ $(uname -a) == *"WSL"* ]]; then
    local selected_alias=$(alias | sed -e 's/=.*$//' | fzf --prompt="alias > " --preview-window=60%:wrap --preview "~/.zsh.d/scripts/show_source.zsh {} | batcat -l sh --color=always --style=grid")
  else
    local selected_alias=$(alias | sed -e 's/=.*$//' | fzf --prompt="alias > " --preview-window=60%:wrap --preview "~/.zsh.d/scripts/show_source.zsh {} | bat -l sh --color=always --style=grid")
  fi
  print -z $selected_alias
}