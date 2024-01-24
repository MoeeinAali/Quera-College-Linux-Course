#! /bin/bash

file=tasks.csv

function _list {
    number=1
    cat "$file" | awk -F, '{print $1" | "$2" | "$3}' | while read line; do
        pretty_line=$(printf "%d | %s" "$number" "$line")
        echo "$pretty_line"
        number=$((number+1))
    done
}

function _clear {
    echo -n "" > "$file"
    echo 'Tasks Cleared!'
}

case $1 in
    "list")
    _list;;
    "clear")
    _clear;;
    *)
    echo "Command Not Supported!";;
esac
