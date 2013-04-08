#!/bin/zsh

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # The dir of this file

echo "Installing all dotfiles and dotdirs"
echo "-----------------------------------"
for dotfile in $ROOT/dotfiles/*
do
	ln -sFhv "$dotfile" ~/.$(basename "$dotfile")
done
echo ""

echo "Installing all libraries"
echo "------------------------"
git submodule init
git submodule update
for dotdir in $ROOT/libs/*
do
	if [ -d "$dotdir" ]; then
		ln -sFvh "$dotdir" ~/.$(basename "$dotdir")
	fi
done
