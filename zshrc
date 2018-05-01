# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#. ~/env.sh
gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

. ~/bin/z.sh

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias t=task
alias dc=docker-compose

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Thanks to macOS Sierra, we have to do this every time now
#ssh-add -A
alias ta="task add"
alias tr="task entry.after:today-3days"
alias tph="task $* mod pri:H"
alias tb="taskbridge"
#function ta() {
#   task add $*
#}
#

fff() {
   find . -name \*$1\*
}

fpf() {
   find . -path \*$1\*
}

alias wx="curl wttr.in/pdx"

export PATH="/Users/kalafut/Library/Python/3.5/bin:/Users/jameskalafut/perl5/bin${PATH:+:${PATH}}"
PERL5LIB="/Users/jameskalafut/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/jameskalafut/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/jameskalafut/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/jameskalafut/perl5"; export PERL_MM_OPT;


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /Users/kalafut/go/bin/vault vault
export VAULT_ADDR=http://127.0.0.1:8200
alias vsd="vault server -log-level=trace -dev -dev-root-token-id=root"
alias vsdc="vault server -log-level=trace -dev -dev-root-token-id=root --config=config.hcl"
alias rgr="rg -g !vendor -g !website -g !ui $@"
# MOTD
 function echo_color() {
   local color="$1"
   printf "${color}$2\033[0m\n"
 }
 echo_color "\033[0;90m" "c-f  Move forward"
 echo_color "\033[0;90m" "c-b  Move backward"
 echo_color "\033[0;90m" "c-p  Move up"
 echo_color "\033[0;90m" "c-n  Move down"
 echo_color "\033[0;90m" "c-a  Jump to beginning of line"
 echo_color "\033[0;90m" "c-e  Jump to end of line"
 echo_color "\033[0;90m" "c-d  Delete forward"
 echo_color "\033[0;90m" "c-h  Delete backward"
 echo_color "\033[0;90m" "c-k  Delete forward to end of line"
 echo_color "\033[0;90m" "c-u  Delete entire line"

#export LD_LIBRARY_PATH=/Users/kalafut/Downloads/instantclient_12_2
#export PKG_CONFIG_PATH=/Users/kalafut/Downloads/instantclient_12_2
