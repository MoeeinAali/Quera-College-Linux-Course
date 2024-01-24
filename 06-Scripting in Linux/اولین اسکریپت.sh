#! /bin/bash
echo "myscript is starting..."
find . -name '*.log' -exec rm -rf {} \;
echo "removed all files ending with .log"
find . -name '*.tmp' -exec rm -rf {} \;
echo "removed all files ending with .tmp"
echo "myscript's work ended here"