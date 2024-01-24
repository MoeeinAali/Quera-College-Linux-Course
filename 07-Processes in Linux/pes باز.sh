pgrep -u root quera-process-
ps xao pgid,sid,cmd | head -n 20
ps xao pid,cmd --sort -pcpu | head -n 3