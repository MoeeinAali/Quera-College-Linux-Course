cd project
mv devv dev
mv dev/codes/code1.py dev/codes/main.py
mv dev/codes/code2.py dev/codes/utils.py
cd dev/logs
rm log1.txt log2.txt log3.txt
cd ..
rmdir logs
cd ..
cp -r tools dev/tools
