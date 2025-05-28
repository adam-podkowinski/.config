# Enable colors and change prompt:
source ~/.profile
autoload -Uz colors && colors
autoload -Uz vcs_info
autoload -U add-zsh-hook

precmd_vcs_info() { vcs_info  }
precmd_functions+=( precmd_vcs_info  )

setopt prompt_subst
zstyle ':vcs_info:*' formats " on  %b"

PS1="🚀 %B%F{cyan}%c%F{magenta}\$vcs_info_msg_0_ %F{green}➜ %F{reset_color}%b"

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
    zle -K viins 
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

function osc7-pwd() {
    emulate -L zsh # also sets localoptions for us
    setopt extendedglob
    local LC_ALL=C
    printf '\e]7;file://%s%s\e\' $HOST ${PWD//(#m)([^@-Za-z&-;_~])/%${(l:2::0:)$(([##16]#MATCH))}}
}

function chpwd-osc7-pwd() {
    (( ZSH_SUBSHELL )) || osc7-pwd
}
add-zsh-hook -Uz chpwd chpwd-osc7-pwd

source '/usr/share/zsh-antidote/antidote.zsh'
antidote load

# pnpm
export PNPM_HOME="/home/adam/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
