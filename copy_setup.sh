#!/bin/bash

readonly SCRIPT_NAME=$(basename "$0")
readonly SETUP=$(dirname "$(realpath "$0")")
readonly HOME="$(realpath ~)"

function error {
  local MSG ERR
  MSG="$1"
  ERR="$2"
  echo "$SCRIPT_NAME Error[$ERR]: $MSG"
  exit "$ERR"
}

[ $# -gt 0 ]  || error "file name missing" "1" 
[ $# -gt 1 ]  && error "use only one file name" "2" 
[ "$1" = "" ] && error "file name empty" "3" 

FILE="$1"
HOME_FILE="$HOME/$FILE"
SETUP_FILE=$(find "$SETUP" -name "$FILE")

rm "$HOME_FILE" 2> /dev/null || error "cannot remove $HOME_FILE" "4"

#ln -s "$SETUP_FILE" "$HOME_FILE" || error "cannot create symbolic link $HOME_FILE -> $SETUP_FILE" "5"
cp "$SETUP_FILE" "$HOME_FILE" || error "cannot copy $HOME_FILE -> $SETUP_FILE" "5"

exit 0

