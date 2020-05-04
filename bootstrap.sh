#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

rsync --exclude ".git/" \
	--exclude ".DS_Store" \
	--exclude "bootstrap.sh" \
	--exclude "README.md" \
	--exclude "LICENSE-MIT.txt" \
	--exclude "vscode-settings.json" \
	-avh --no-perms . ~;

rsync vscode-settings.json "${HOME}/Library/Application Support/Code/User/settings.json"