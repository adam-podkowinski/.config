alias vim=nvim
alias cal="cal -m"
pfetch

set EDITOR /usr/bin/nvim
set TERMINAL /usr/bin/alacritty
set CC /usr/bin/clang
set CXX /usr/bin/clang++
set -Ux JAVA_OPTS ''
set -Ux JAVA_HOME /usr/lib/jvm/java-8-openjdk
set -Ux ANDROID_SDK_ROOT ~/Android/Sdk
set -Ux fish_key_bindings fish_default_key_bindings
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Android SDK
set PATH $PATH $ANDROID_SDK_ROOT/emulator
set PATH $PATH $ANDROID_SDK_ROOT/platform-tools/
set PATH $PATH $ANDROID_SDK_ROOT/tools/bin/
set PATH $PATH $ANDROID_SDK_ROOT/tools/
set PATH $PATH $ANDROID_SDK_ROOT/emulator:$PATH
set PATH $PATH $JAVA_HOME/bin
set PATH $PATH $HOME/.cargo/bin/
set PATH $PATH $HOME/scripts/

starship init fish | source

fish_vi_key_bindings
