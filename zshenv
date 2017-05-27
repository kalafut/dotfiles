# Ensure that a non-login, non-interactive shell has a defined environment.
# What is this???
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Paths and basic environment core environment variables. Everything else
# goes in .zshrc
#
# TODO: fix path
export GOPATH=$HOME/go
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/Library/Frameworks/Mono.framework/Versions/Current/bin/:/usr/local/go/bin:/opt/openresty/nginx/sbin:$GOPATH/bin
export VISUAL=vim
