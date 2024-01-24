#! /bin/bash

file=tasks.csv

function _done {
    num=$1
    lines_number=$(wc -l "$file")
    if [[ $num > $lines_number ]]; then
        echo "Task '${num}' Not Exists!"
        exit
    fi
    tmp_line=$(sed -n "$num"p "$file")
    line="1"${tmp_line:1}
    sed -i "$num""s/$tmp_line/$line/" "$file"
    echo "Task ${line:4} Done."
}

function _find {
    grep -n "$1" "$file" | while read line; do
        number=${line:0:1}
        done=${line:2:1}
        priority=${line:4:1}
        task=${line:6}
        pretty_line=$(printf "%d | %d | %s | %s" "$number" "$done" "$priority" "$task")
        echo "$pretty_line"
    done
}

case $1 in
    "done")
    _done "$2";;
    "find")
    _find "$2";;
    *)
    echo "Command Not Supported!";;
esac