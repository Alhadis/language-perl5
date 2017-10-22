#!/bin/sh

for file in "$@"; do
	output=$(perl -c "$file" 3>&2 2>&1 1>&3);
	status=$?
	type="";
	lc=$(printf '%s\n' "$output" | wc -l | sed -Ee 's/\s+//');
	result=$(printf '%s\n' "$output" | tail -n1);
	
	case $result in
		
		# Valid syntax, but any warnings?
		${file}\ syntax\ OK)
			if [ $lc = 1 ]; then # Valid
				printf '%s\n' "$output";
				continue;
			else
				result="$file not OK";
				status=1;
				type="warning";
			fi
		;;
		
		# Full-blown compilation error
		*) type="error";;
	esac
	
	lc=$(($lc - 1));
	output=$(printf '%s\n' "$output" | head -n $lc | sed -Ee 's/^/\t/g');
	if [ $lc != 1 ]; then
		output=$(printf '%s\n' "$output" | nl -s.);
		type="${type}s";
	fi
	
	printf "Got %s %s:\n%s\n%s\n" $lc $type "$output" "$result";
	
	if [ $status -ne 0 ]; then
		exit $status;
	fi
done
