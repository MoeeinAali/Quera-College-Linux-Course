#! /bin/bash
declare -A win
declare -A lose
declare -A draw
lose=([sang]=kaqaz [kaqaz]=gheichi [gheichi]=sang)
win=([sang]=gheichi [kaqaz]=sang [gheichi]=kaqaz)
draw=([sang]=sang [kaqaz]=kaqaz [gheichi]=gheichi)
echo "$1 Will Lose ${lose[$1]}"
echo "$1 Will Draw ${draw[$1]}"
echo "$1 Will Win ${win[$1]}"