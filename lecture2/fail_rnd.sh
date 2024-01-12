#!/usr/bin/env bash
fail_rnd () {
	n=$(( RANDOM % 100 ))
	if [[ n -eq 42 ]]; then
		echo "Something went wrong"
		>&2 echo "The error was using magic numbers"
		return 1
	fi
	
	echo "Everything went according to plan"
}

run_fail_rnd () {
	counter=1

	while true; do
		fail_rnd >> std.out 2>> error.out
		exit_code=$?

		if [[ $exit_code -ne 0 ]]; then
			echo "Script failed on iteration $counter"
			break
		fi
		
		echo "$counter"
		((counter++))
	done
	
	echo "Printing all standard output and error streams:"
	cat std.out error.out
}

