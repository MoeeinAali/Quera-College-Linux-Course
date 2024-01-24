ps xao pid,%cpu,%mem,cmd | grep annoying-while | head -n 1
kill -9 $(ps aux | grep annoying-while | awk '{print $2}' | head -n 1)