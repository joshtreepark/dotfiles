# +------------+
# | NAVIGATION |
# +------------+

setopt AUTO_CD              # Go to folder path without using cd.

setopt AUTO_PUSHD           # Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

setopt CORRECT              # Spelling correction
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt EXTENDED_GLOB        # Use extended globbing syntax.

# +---------+
# | HISTORY |
# +---------+

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
# export HISTTIMEFORMAT="[%F %T] "

# +---------+
# | ALIASES |
# +---------+

source $DOTFILES/aliases/aliases

# +--------+
# | PROMPT |
# +--------+
PROMPT="%F{cyan}%n %1~ %# %f"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

###          PATH          ###
# Note: zsh specific
path+=('$HOME/bin')                   # zsh
path+=('/usr/bin')                   
path+=('/usr/local/bin')  	          # screen
path+=('$HOME/.emacs.d/bin')          # emacs
path+=('/Applications/Stata/StataMP.app/Contents/MacOS/')  # Stata
export PATH

# For fzf functionality
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable autocompletion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # ignore case when tab complete

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# +-----------+
# | FUNCTIONS |
# +-----------+
source $ZDOTDIR/bd.zsh

#
# VPN Functionality
# 
# function vpn-up() {
#   local VPN_HOST={vpn.nber.org}
#   local VPN_USER={joshpark}
# 
#   echo "Starting the vpn ..."
#   sudo openconnect --protocol=fortinet --background --user=$VPN_USER $VPN_HOST
# }
# 
# function vpn-down() {
#   sudo kill -2 `pgrep openconnect`
# }
