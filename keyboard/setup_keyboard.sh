#!/bin/bash

###############################################################################
# Altera o layout do teclado para pt-br                                       #
###############################################################################

readonly SCRIPT_NAME=$(basename "$0")

function error {
  local ERR="$1"
  case "$ERR" in
    1) echo "Código de layout do keyboard não informado" ;;
    2) echo "Este script deve ser executado como 'sudo'" ;;
  esac
  echo "ex.: sudo ./$SCRIPT_NAME br"
  exit "$ERR"
}

[ "$1" = "" ] && error "1"

readonly KEYBOARD="$1"
readonly BACKUP="yes"
readonly FILE="/etc/default/keyboard"

if [ "$BACKUP" = "yes" ] ; then
  # cria um backup do /etc/default/keyboard
  cp "$FILE" "$FILE"_bkp || error
fi
sed 's/XKBLAYOUT=".*"/XKBLAYOUT="$KEYBOARD"/g' "$FILE" > "$FILE" || error
