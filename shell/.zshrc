# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ==============================================================================
# General zsh settings
# ==============================================================================

# Disable control flow (ctrl-s / ctrl-q)
stty stop '' -ixoff -ixon

# Dont raise errors when regex nomatch fires
unsetopt nomatch

# ==============================================================================
# Core settings
# ==============================================================================

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="powerlevel10k/powerlevel10k"

#zsh-autosuggestions color fix
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

# Disable auto title setting
DISABLE_AUTO_TITLE="true"

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# ==============================================================================
# Plugins declaration
# ==============================================================================

plugins=(bundler common-aliases dirhistory git tmux macos vi-mode zsh-autosuggestions zsh-completions zsh-syntax-highlighting z)
GEOMETRY_PROMPT_PLUGINS=(exec_time jobs git rustup)

# ==============================================================================
# Sources
# ==============================================================================

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# ------------------------------------------
# Setopts
# ------------------------------------------

# Preserve history per pane
setopt nosharehistory

# ==============================================================================
# Aliases
# ==============================================================================

# ------------------------------------------
# Services
# ------------------------------------------
alias bs="brew services"
alias bsl="brew services list"

# ------------------------------------------
# Applications
# ------------------------------------------
alias v="nvim"
alias ec="emacsclient -c"
alias et="emacsclient -t"

# ------------------------------------------
# Language specific
# ------------------------------------------
alias rb="ruby"
alias nd="node"

# ------------------------------------------
# Forks
# ------------------------------------------
alias fparcel="node --inspect ~/Forks/parcel/bin/cli.js"

# ------------------------------------------
# Other
# ------------------------------------------
alias q="exit"
alias localip="ipconfig getifaddr en0"
alias externalip="dig +short myip.opendns.com @resolver1.opendns.com"

# Uncommited
[ -f ~/.rocket-aliases.zsh ] && source ~/.rocket-aliases.zsh

# ==============================================================================
# Exports
# ==============================================================================

# 256 color support
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

# Editor settings
export EDITOR="nvim"
export MYNVIMRC="~/.config/nvim/init.vim"

# Environments
export KEYTIMEOUT=1
export WORKSPACE=$HOME/Workspace
export GOPATH=$WORKSPACE/gospace
export PYENV_ROOT=$HOME/.pyenv
export HOMEBREW_NO_AUTO_UPDATE=1 # skip homebrew updates when `brew install`
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# PATH
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.crenv/bin:$PATH
export PATH=$HOME/.goenv/bin:$PATH
export PATH=$HOME/.jenv/bin:$PATH
export PATH=$HOME/.nodev/bin:$PATH
export PATH=$HOME/.pyenv/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/Users/alvinlee/.local/bin:$PATH
export PATH="/Users/alvinlee/.local/share/solana/install/active_release/bin:$PATH"


source ~/.personalrc

# ==============================================================================
# Hooks
# ==============================================================================

eval "$(jenv init -)"
eval "$(exenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(direnv hook zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

. /usr/local/opt/asdf/asdf.sh
