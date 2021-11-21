PATH="~/tools/bin:$PATH"

##########################################################
# nvm/node configurations
##########################################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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

# Alias related to exa utils
alias ls='exa --icons --group-directories-first'
alias ll='ls --long --git --header'
alias lr='ll --sort size'
alias ltree='ll -T --git-ignore'

# Environment releated aliases
alias reload='source ~/.barishb.sh'
alias rl='ssh'
alias python3='python3.7'
alias pip3='pip3.7'
