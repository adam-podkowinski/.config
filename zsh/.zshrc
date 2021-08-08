# Enable colors and change prompt:
autoload -Uz colors && colors
autoload -Uz vcs_info

precmd_vcs_info() { vcs_info  }
precmd_functions+=( precmd_vcs_info  )

setopt prompt_subst
zstyle ':vcs_info:*' formats " on  %b"

PS1="%B%F{cyan}%c%F{magenta}\$vcs_info_msg_0_ %F{green}➜ %F{reset_color}%b"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tutoload -U compinit
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;
_comp_options+=(globdots)   # Include hidden files.

# vi mode
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

VIM_MODE_VICMD_KEY='<M-[>29'

source <(antibody init)

antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zdharma/fast-syntax-highlighting
antibody bundle zsh-users/zsh-completions
antibody bundle softmoth/zsh-vim-mode

echo "To shutdown computer type: doas shutdown now"
