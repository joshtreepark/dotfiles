#!/usr/bin/env zsh

################################
# EXPORT ENVIRONMENT VARIABLES #
################################

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# editor
export VISUAL="nvim"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
# export HISTFILE="$XDG_STATE_HOME/zsh/.zsh_history"    # History filepath
export HISTSIZE=10000                             # Maximum events for internal history
export SAVEHIST=10000                             # Maximum events in history file

export DOTFILES="$HOME/.dotfiles"
