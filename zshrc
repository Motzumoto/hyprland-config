export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git archlinux)
source $ZSH/oh-my-zsh.sh
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt beep nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
zstyle :compinstall filename '~/.zshrc'

# -----------------------------------------------------
# Aliases & Environment
# -----------------------------------------------------
# This is how fastfetch uses animated logos. Using Alacritty won't work for this. Use Kitty or some other emulator with image support.
kitten icat -n --place 30x30@0x6 --scale-up --align left ~/Pictures/lain_trans.gif | fastfetch --logo-width 30 --raw -
alias ls='exa'
alias cat='bat'
alias find='fd'
alias ok='echo ok'
alias clear='clear && kitten icat -n --place 30x30@0x6 --scale-up --align left ~/Pictures/lain_trans.gif | fastfetch --logo-width 30 --raw -'
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
# ----------------------------------------------------------------------------------------------------------------->
autoload -Uz compinit
compinit
typeset -U path PATH
path=(~/.local/bin $path)
export PATH
export PATH="$PATH:$HOME/.rvm/bin"
export ARCH=x86_64
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

