# Setup path
export PATH=$PATH:/usr/local/go/bin


# Set up the prompt
autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Configure Powerline with Powerlevel theme
source /usr/share/powerlevel9k/powerlevel9k.zsh-theme 
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status command_execution_time context dir vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_COLOR_SCHEME='light'

POWERLEVEL9K_STATUS_OK=true
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_OK_FOREGROUND="82"
POWERLEVEL9K_STATUS_OK_BACKGROUND="238"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="196"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="238"

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_EXECUTION_TIME_ICON=$'\uf64f'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="000"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="014"

POWERLEVEL9K_DIR_BACKGROUND="162"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LOCK_ICON="\uf023"

POWERLEVEL9K_ALWAYS_SHOW_USER="true"
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT="false"
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="255"
POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND="172"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="196"
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND="039"
POWERLEVEL9K_CONTEXT_BACKGROUND="234"

POWERLEVEL9K_VCS_BRANCH_ICON='\uE725'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf09b'
POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d3'
POWERLEVEL9K_VCS_BACKGROUND='236'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='236'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='236'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='236'
POWERLEVEL9K_VCS_FOREGROUND='255'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='076'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='214'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='226'

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0C6'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0C5'
