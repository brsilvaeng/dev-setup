#!/bin/bash

readonly SCRIPT_NAME=$(basename "$0")
readonly SETUP=$(dirname "$(realpath "$0")")
readonly HOME=$(env | grep HOME | cut -d "=" -f2)

echo -n "Your Name: "
read -r NAME

echo -n "Your E-mail: "
read -r EMAIL

echo -n "GitHub username: "
read -r USER

echo -n "GitHub password: "
read -r PASS

"$SETUP"/../copy_setup.sh .gitconfig || exit 1
echo "Copied setup file: .gitconfig"

git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
#git config --global credential.helper store
echo "https://$USER:$PASS@github.com" > "$HOME"/.git-credentials

