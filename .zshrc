# Path to your oh-my-zsh installation.
export ZSH=/home/smacz/.oh-my-zsh

# for andrewcz prompt
autoload -Uz add-zsh-hook
# Set name of the theme to load.
ZSH_THEME="smacz"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Do not re-echo last command before execution when using "!!"
unset HIST_VERIFY

export PATH="/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:/home/$USER/.local/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/smacz/.gem/ruby/2.4.0/bin"
source "/home/smacz/.oh-my-zsh/oh-my-zsh.sh"
#source "/home/smacz/.local/bin/antigen.zsh"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='vim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# lemonbar export
export PANEL_FIFO="/tmp/panel-fifo"

# Ansible vault password file
ANSIBLE_VAULT_PASSWORD_FILE="~/.vault_pass.txt"

# Set vi mode
bindkey -v

# backwards tab through options
bindkey '^[[Z' reverse-menu-complete

# Enable command-not-found hook
source /usr/share/doc/pkgfile/command-not-found.zsh

# Enable man page highlighting
source ~/.oh-my-zsh/plugins/colored-man-pages

# Enable syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#export XDG_CONFIG_HOME="~/.config"
# Ansible inventory file
#export ANSIBLE_INVENTORY=~/.local/ansible/inventory.ini

# Ansible config file
#export ANSIBLE_CONFIG=~/.local/ansible/ansible.cfg

#function zle-keymap-select zle-line-init {
#
#    # change cursor shape based on vi mode
#    if [[ $TERM != "linux" ]]; then
#        if [ $KEYMAP = vicmd ]; then
#            # vim's command mode
#            if [[ $TMUX = '' ]]; then
#                printf "\033[2 q" # solid block
#            else
#                printf "\033Ptmux;\033\033[2 q\033\\"
#            fi
#        else
#            # insert mode
#            if [[ $TMUX = '' ]]; then
#                printf "\033[4 q" # solid underscore
#            else
#                printf "\033Ptmux;\033\033[4 q\033\\"
#            fi
#        fi
#    fi
#
#    zle reset-prompt
#    zle -R
#}
#
#function zle-line-finish {
#    if [[ $TERM != "linux" ]]; then
#        if [[ $TMUX = '' ]]; then
#            printf "\033[2 q" # solid block
#        else
#            printf "\033Ptmux;\033\033[2 q\033\\"
#        fi
#    fi
#}
#
#zle -N zle-line-init
#zle -N zle-line-finish
#zle -N zle-keymap-select

export RANGER_LOAD_DEFAULT_RC='FALSE'

# Use vim history-search mode
bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward
