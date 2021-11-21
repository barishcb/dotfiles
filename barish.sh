PATH="~/tools/bin:$PATH"

# Setup fzf environment and autocompletion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Setup nvm environment and autocompletion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias vim=nvim
alias vi=nvim

