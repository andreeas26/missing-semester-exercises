#!/bin/bash
marco () {
	save_to="${HOME}/marco_pwd"
	echo "Save to: $save_to"
	pwd > $save_to
	res="$(cat "${save_to}")"
	echo "Result: $res"
}

