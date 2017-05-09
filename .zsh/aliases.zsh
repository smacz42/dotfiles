# You can put files here to add functionality separated per file, which
# will be ignored by git.
#
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.
#
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here. For a full list of 
# active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## Until I say otherwise
alias pacman="sudo pacman"

## Colorize and group the ls output ##
alias ls='ls -hlaZ --color=auto --group-directories-first'

## Folders that are like...underneath the folders, man ##
alias lsd='ls -d */'

## Colorize grep commands ##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## Make parent directories as needed and output result ##
alias mkdir='mkdir -pv'

## Don't let ping go on forever ##
alias ping='ping -c 5'

## Is this thing on? ##
alias pingg='ping -c 5 google.com'
alias pinggg='ping -c 5 8.8.8.8'

## Say my name, say my name ##
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

## Hidden files and folders are files too, ya know ##
alias cp='cp -ar'

## Who's permission is denied? ##
alias fuck='sudo $(history -p !!)'

## Building a better understanding, one block device at a time##
alias lsblk='lsblk -f'

## I'm too lazy to remember the content of this directory ##
function cdls() { builtin cd "$@" && ls; }

## New for systemd ##
function ctlstart()    { sudo systemctl start $@; }
function ctlstop()     { sudo systemctl stop $@; }
function ctlrestart()  { sudo systemctl restart $@; }
function ctlstatus()   { sudo systemctl status $@; }
function ctlenable()   { sudo systemctl enable $@; }
function ctldisable()  { sudo systemctl disable $@; }

## And for service files
function ctlservice()  { sudo journalctl -u $@; }

## Get outta my sight! ##
alias clr='clear'

## I have found the light ##
alias emacs='vim'

## I most certainly not youtube-dl that video! ##
alias erase='cat /dev/null > ~/.zsh_history'

## Don't watch, ma ##
alias shh='unset HISTFILE'

## Up...up...and away! ##
alias cu='cd ..'

## Because typing "cd .." repeatedly is boring. ##
up() {
  local x='';
  for i in $(seq ${1:-1}); do
    x="$x../";
  done;
  cd $x;
}

## Confirm 'mv' and 'rm'
alias rm='rm -i'
alias mv='mv -i'

## This time in human ##
alias df='df -h'

## You fatty file ##
alias ds='du -S | sort -n -r |more'

## I want all of you ##
alias du='du -ch'

## I know it's more typing but...c'mon ##
alias godmode='sudo'

## Here's lookin at you, xarchiver ##
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.tar.xz)    tar xvf $1     ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

## That's it, my keyboard is going in the trash! ##
alias frak='fortune'

## And thanks for all the fish ##
alias forkbomb=':() { :|:& } ;:'
alias vi='vim'

## Export statements

export RUST_SRC_PATH='/usr/local/lib/rustc-1.3.0/'
export EDITOR='vim'
export RTV_EDITOR='vim'

