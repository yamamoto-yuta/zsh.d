# General
alias relogin='exec $SHELL -l'
alias alias-update='unalias -a && source ~/.zshrc'
alias update-zshd='cd ~/.zsh.d && git pull origin main && cd - && source ~/.zshrc'

# Python
alias venv='python3 -m venv env'
alias activate='source env/bin/activate'
alias del-env='sudo rm -r ./env/'

# Git
alias br-clean='git branch --merged | egrep -v "\*|master|develop" | xargs git branch -D'
alias push-this='git push origin  $(git branch --contains | cut -d " " -f 2)'
alias fbr='git checkout $(git branch | cut -c 3- | fzf)'
# requirements: GitHub CLI
alias repo='gh repo view --web'

# Docker
# requirements: docker
alias d='docker'
alias dc='docker-compose'
alias di='docker images'
alias dps='docker ps'

# ls-Improved
# requirements: ls-Improved
alias clear='clear && lsi ././'

# Fuzzy-Explorer-on-Terminal
# requirements: Fuzzy-Explorer-on-Terminal
alias fet='. ~/.fet/fet'

# For wsl
# requirements: Files.exe
alias hwclk='sudo hwclock -s'
alias explorer='explorer.exe .'
alias clip='clip.exe'
