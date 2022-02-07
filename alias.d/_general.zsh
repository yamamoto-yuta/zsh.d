# Genera;
alias relogin='exec $SHELL -l'
alias alias-update='unalias -a && source ~/.zshrc'

# Git
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
alias explorer='Files.exe .'
alias clip='clip.exe'