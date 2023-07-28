# fdrmi - delete images
# requirements: fzf, docker
alias fdrmi='function_fdrmi'
function function_fdrmi() {
  # Execute fzf
  local selected=$(docker images | sed -e '1d' | fzf -m --prompt="Container > ")
  if [ -n "$selected" ]; then
    # Confirm for deleting
    echo '# Selected images:\n'
    echo $selected
    echo -n '\nDo you really want to delete these images? (Y/n) > '
    read answer
    if [ "$answer" = "y" -o "$answer" = "Y" ]; then
      # Delete selected images
      if [ "$(uname -s)" = 'Darwin' ]; then
        local lst_image_id=$(echo "$selected" | sed 's/[[:space:]]\{2,\}/\'$'\t/g' | cut -f 3)
      else
        local lst_image_id=$(echo "$selected" | sed 's/\s\{2,\}/\t/g' | cut -f 3)
      fi
      local n_images=$(echo $lst_image_id | wc -l)
      for ((i=1; i<=$n_images; i++))
      do
        local image_id=$(echo $lst_image_id | sed -n ${i}p)
        docker rmi $image_id
      done
    fi
  fi
}
