#! /bin/bash

file=tasks.csv

function _add {
    echo "0,$1,\"$2\"" >> "$file"
    echo "Task '$2' Added to List."
}

case $1 in
    "add")
        while [ -n "$2" ]
        do
            case "$2" in
                -t | --title)
                    if [ -z "$3" ]; then
                        echo "Option -t|--title Needs a Parameter"
                        exit
                    fi
                    name="$3"
                    shift
                shift ;;
                
                -p | --priority)
                    priority=$3
                    if [[ $priority != 'L' && $priority != 'M' && $priority != 'H' ]]; then
                        echo "Option -p|--priority Only Accept L|M|H"
                        exit
                    fi
                    shift
                shift ;;
                
                *)
                    echo "Invalid Option"
                exit ;;
            esac
        done
        if [[ -z "$priority" ]]; then
            priority="L"
        fi
    _add "$priority" "$name";;
    *)
    echo "Command Not Supported!";;
esac
