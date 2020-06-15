#!/bin/bash

readonly SCRIPT_NAME="$(basename $0)"
readonly SETUP="$(dirname "$(realpath $0)")"
readonly HOME="$(realpath ~)"

function usage {
  echo "Install OPTION setup configuration for your local user"
  echo "Usage: $SCRIPT_NAME [OPTION]"
  echo "List OPTION:"
  echo "  -b, --bash    setup bash"
  echo "  -g, --git     setup git"
  echo "  -t, --tmux    setup tmux"
  echo "  -v, --vim     setup vim"
  echo "  -a, --all     all setups" 
  exit 1
}

[ $# -gt 0 ] || usage

while [ $# -gt 0 ] ; do
  case "$1" in
    -b|--bash) bash/setup_bash.sh ;;
    -g|--git)  git/setup_git.sh  ;;
    -t|--tmux) tmux/setup_tmux.sh ;;
    -v|--vim)  vim/setup_vim.sh  ;;
    -a|--all)  $SETUP/$SCRIPT_NAME -b -g -t -v ;;
    *) usage ;;
  esac
  shift
done

