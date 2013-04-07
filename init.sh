#!/bin/sh

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # The dir of this file

# TODO: Update all submodules

# Install all dot files
for dotfile in $ROOT/files/*
do
	if [ -f "$dotfile" ]; then
		ln -sfv "$dotfile" ~/.$(basename "$dotfile")
	fi
done

# TODO: Install all directories