# general settings
setopt auto_cd
setopt auto_pushd
setopt list_packed
setopt magic_equal_subst
autoload zed


# history settings
HISTSIZE=100000
SAVEHIST=100000
setopt inc_append_history
setopt extended_history
setopt share_history
setopt hist_ignore_dups
setopt hist_no_store


# Load local file
if [ -f "~/.zshrc.local" ]; then . "~/zshrc.local"; fi
if [ -f "~/dotfiles/zsh/peco.zsh" ]; then . "~/dotfiles/zsh/peco.zsh"; fi

chpwd() {
    ls
}

# prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# anyenv
eval "$(anyenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~//google-cloud-sdk/path.zsh.inc' ]; then . '~/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.zsh.inc' ]; then . '~/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/opt/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/opt/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<
