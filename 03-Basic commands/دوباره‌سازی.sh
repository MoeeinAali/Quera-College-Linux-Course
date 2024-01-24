find . -name *.log -type f -delete
find . -name tmp -type d -exec ls -lh {} \;
find . -type d -exec du -sh {} \;
find . -name make -type d -exec touch {}/info.txt \;