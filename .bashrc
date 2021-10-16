#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '

export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR=/usr/local/bin/nvim
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable
export ZDOTDIR=$HOME/.config/zsh
export SHELL=/bin/zsh
export CC="/usr/bin/clang"
export CXX=/usr/bin/clang++
export JAVA_OPTS=''
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export ANDROID_SDK_ROOT=~/Android/Sdk
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$HOME/software/flutter/flutter/bin"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools/"
export PATH="$PATH:$ANDROID_SDK_ROOT/tools/bin/"
export PATH="$PATH:$ANDROID_SDK_ROOT/tools/"
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$JAVA_HOME/bin"
export PATH="$PATH:$HOME/.cargo/bin/"
export PATH="$PATH:$HOME/scripts/"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.emacs.d/bin"
export PATH="$PATH:$HOME/bodzio/code/emsdk"
export PATH="$PATH:$HOME/bodzio/code/emsdk/node/14.15.5_64bit/bin"
export PATH="$PATH:$HOME/bodzio/code/emsdk/upstream/emscripten"
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export TERMINAL="/usr/local/bin/st"
export TERM="/usr/local/bin/st"
export NNN_FIFO="/tmp/nnn.fifo"
