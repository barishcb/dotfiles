##########################################################
# Setting up custom paths
##########################################################
export SOFTWARE_PATH=$HOME/softwares/
export TOOLS_PATH=$HOME/tools
export VIRTUALENVS_ROOT=$HOME/virtualenv
export PYTHONSTARTUP=$HOME/.pythonstartup

# Updates all executable paths
export PATH="$TOOLS_PATH/bin:$PATH"
export PATH="$SOFTWARE_PATH/sublime-text/latest:$PATH"

##########################################################
# Setting personal bash configurations
##########################################################
export HISTSIZE=3000

##########################################################
# nvm/node configurations
##########################################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

##########################################################
# rustup.rs configurations
##########################################################
[ -f $HOME/.cargo/env ] && source $HOME/.cargo/env

##########################################################
# oh-my-bash configurations
##########################################################
[ -f ~/.oh-my-bash.sh ] && source ~/.oh-my-bash.sh

##########################################################
# ripgrep configurations
##########################################################
[ -f ~/tools/bin/complete/rg.bash ] && source ~/tools/bin/complete/rg.bash

##########################################################
# exa configurations (replacement for ls)
##########################################################
[ -f ~/tools/completions/exa.bash ] && source ~/tools/completions/exa.bash

##########################################################
# fd configurations
##########################################################
[ -f ~/tools/bin/autocomplete/fd.bash-completion ] && source ~/tools/bin/autocomplete/fd.bash-completion

##########################################################
# fzf configurations
##########################################################
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='rg --files'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --preview "cat {}"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
complete -o nospace -o plusdirs -F _fzf_dir_completion cd

##########################################################
# Setting up custom aliases
##########################################################
alias vim=nvim
alias vi=nvim
alias subl=sublime_text

# Alias related to exa utils
alias ls='exa --icons --group-directories-first'
alias ll='ls --long --git --header'
alias lr='ll --sort size'
alias ltree='ll -T --git-ignore'

# Git specific aliases and functions
export VISUAL=nvim
export EDITOR="$VISUAL"
alias g='git'
alias gg='git gui'

# Environment related aliases
alias reload='source ~/.barishb.sh'
alias rl='ssh'

# Teradici PcoIP Client (Using Docker)
# Need to pull the docker image before using
#
#   $ docker pull danisla/pcoip-client
#   $ python3 -m pip install dockerx --user
#
# alias pcoip='docker run -d --rm -h myhost -v $(pwd)/.config/:/home/myuser/.config/Teradici -v $(pwd)/.logs:/tmp/Teradici/$USER/PCoIPClient/logs -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY danisla/pcoip-client'
alias pcoip='python3 -m dockerx.run --image danisla/pcoip-client'
