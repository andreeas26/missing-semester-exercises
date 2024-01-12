#!/bin/bash
polo () {
	dest="$(cat "$HOME/marco_pwd")"
	echo "CD to $dest"
	cd "$dest" || exit
	echo "Return code: $?"
}

