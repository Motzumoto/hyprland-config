# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt beep nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
zstyle :compinstall filename '~/.zshrc'

# -----------------------------------------------------
# Powerlevel10k Setup
# -----------------------------------------------------
# Clone if not installed
if [[ ! -d "$HOME/.powerlevel10k" ]]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$HOME/.powerlevel10k"
fi
# Source theme (core functions)
source "$HOME/.powerlevel10k/powerlevel10k.zsh-theme"
# Source your customized prompt settings
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh


# -----------------------------------------------------
# Aliases & Environment
# -----------------------------------------------------

# These are optional, but it's what *i* have. You can remove them if you don't need them.
alias ls='exa'
alias cat='bat'
alias find='fd'
alias ok='echo ok'
alias clear='clear && fastfetch'
alias kill-orphans='sudo pacman -Rns $(pacman -Qtdq) --noconfirm'
alias new-mirrors='sudo reflector -c US -f 12 -l 12 --sort rate --verbose --save /etc/pacman.d/mirrorlist'
alias restart='reboot'
alias off='shutdown now'
alias kys='off'
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
export NDK_HOME=/opt/android-ndk
export LANG=en_US.UTF-8
export XDG_SESSION_TYPE=wayland
# -------------------------------------------------------------------------------------------------------------------------------
autoload -Uz compinit
compinit

typeset -U path PATH
path=(~/.local/bin $path)
export PATH

export PATH="$PATH:$HOME/.rvm/bin"
export ARCH=x86_64
export PATH="$HOME/bin:$PATH"
