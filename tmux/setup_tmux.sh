#!/bin/bash

readonly SCRIPT_NAME=$(basename "$0")
readonly SETUP=$(dirname "$(realpath "$0")")
readonly HOME=$(env | grep HOME | cut -d "=" -f2)

$SETUP/../copy_setup.sh ".tmux.conf" || exit 1
echo "Copied setup file: .tmux.conf"

