#!/bin/bash

# alias newctf 'source "$HOME/scripts/newctf/ctf.sh'
# sourcing it allows for retaining the directory swap into terminal

while true; do
    read -p "Event name: " n

    if [[ "$n" =~ ^[a-zA-Z0-9\ _-]+$ ]]; then
        break
    else
        echo "invalid name"
    fi
done

d="$HOME/CTF"
if [ ! -d $d ]; then
    mkdir "$HOME/CTF"
fi

mkdir "$d/$n"
cd "$d/$n"

categories=("web" "forensics" "misc" "pwn" "crypto" "rev")
for x in "${categories[@]}"; do
    mkdir "$x"
done