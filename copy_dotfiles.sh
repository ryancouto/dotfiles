#!/bin/bash
FILES=$(pwd)/.*

for file in $FILES; do
	if [[ "$file" =~ \.*/\.[a-zA-Z] ]]; then
		fileArr=(${file//./ })
		name="${fileArr[1]}"
		if [[ "$name" == "bash_profile" ]]; then
			echo ''
		elif [[ "$name" == "local" ]]; then
			cp ~/."$name".bash "$file"
		elif [[ "$name" != "git" ]]; then
			echo "$name"
			echo "$file"
			cp ~/."$name" "$file"
		fi
	fi
done

# cp ~/.local.bash "$pwd"/.bash_profile
# cp ~/.aliases