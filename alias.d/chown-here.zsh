# chown-here - chown current dir
alias chown-here='function_chown_here'
function function_chown_here() {
  \pwd | xargs sudo chown -R $@
}