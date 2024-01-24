#! /bin/bash
declare -i sum=$2
case $1 in
    +)
        for arg in "${@:3}"
        do
            sum=$((sum+arg))
        done
        echo "addition of your two numbers are $sum"
    ;;
    -)
        for arg in "${@:3}"
        do
            sum=$((sum-arg))
        done
        echo "subtraction of your two numbers are $sum"
    ;;
    x)
        for arg in "${@:3}"
        do
            sum=$((sum*arg))
        done
        echo "multiplication of your two numbers are $sum"
    ;;
    /)
        for arg in "${@:3}"
        do
            sum=$((sum/arg))
        done
        echo "division of your two numbers are $sum"
    ;;
esac
