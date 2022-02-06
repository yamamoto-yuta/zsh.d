# fde - execute selected docker container
# requirements: fzf, docker
alias fde='function_fde'
function function_fde() {
  local container=$(docker ps --format "{{.Names}}" | fzf --prompt="Container > ")
  if [ $# = 0 ]; then
    docker exec -it $container bash
  else
    docker exec -it $container $@
  fi
}