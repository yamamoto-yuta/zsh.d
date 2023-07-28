# bat
# requirements: bat
if [[ $(uname -a) == *"WSL"* ]]; then
  alias bat='function_bat'
  function function_bat() {
    \batcat $@
  }
fi