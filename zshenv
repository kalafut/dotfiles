# Ensure that a non-login, non-interactive shell has a defined environment.
# What is this???
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export GOPATH=/Users/kalafut/dev/go
export LEDGER_FILE=/Users/kalafut/Documents/Finances/ledger_redux/combined.ldg
export LEDGER_INIT_FILE=/Users/kalafut/Documents/Finances/ledger_redux/ledgerrc.ldg
export LEDGER_INIT=/Users/kalafut/Documents/Finances/ledger_redux/ledgerrc.ldg

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export FINIKI_ROOT=$HOME/Dropbox/finiki
#source /usr/local/bin/virtualenvwrapper.sh

# Paths and basic environment core environment variables. Everything else
# goes in .zshrc
#
# TODO: fix path
export GOPATH=$HOME/go
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/Library/Frameworks/Mono.framework/Versions/Current/bin/:/usr/local/go/bin:/opt/openresty/nginx/sbin:$GOPATH/bin
export VISUAL=vim
