#!/bin/sh

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # The dir of this file

echo "Updating all git submodules"
echo "---------------------------"
git submodule init
git submodule update
echo ""

echo "Installing all dotfiles"
echo "-----------------------"
for dotfile in $ROOT/files/*
do
	if [ -f "$dotfile" ]; then
		ln -sfv "$dotfile" ~/.$(basename "$dotfile")
	fi
done
echo ""

echo "Installing all dot directories"
echo "------------------------------"
for dotdir in $ROOT/dirs/*
do
	if [ -d "$dotdir" ]; then
		ln -sfv "$dotdir" ~/.$(basename "$dotdir")
	fi
done
