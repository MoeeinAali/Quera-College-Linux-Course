#! /bin/bash
if [[ "$2" == "+" ]]; then
    echo "addition of your two numbers are $(($1+$3))"
fi

if [[ "$2" == "-" ]]; then
    echo "subtraction of your two numbers are $(($1-$3))"
fi

if [[ "$2" == "x" ]]; then
    echo "multiplication of your two numbers are $(($1*$3))"
fi

if [[ "$2" == "/" ]]; then
    echo "division of your two numbers are $(($1/$3))"
fi