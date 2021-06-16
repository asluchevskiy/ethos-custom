VERSION='1.23'

disallow
minestop
echo 'waiting for 5 seconds before continue'
sleep 5
curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/custom/hash-monitor
cd /tmp
rm -rf lolMiner*
wget -q https://github.com/Lolliedieb/lolMiner-releases/releases/download/$VERSION/lolMiner_v$VERSION\_Lin64.tar.gz
rm /opt/miners/custom/custom
rm -rf /opt/miners/custom/lolminer
mkdir /opt/miners/custom/lolminer
tar -xvf lolMiner*
mv ./$VERSION/* /opt/miners/custom/lolminer
rm -rf lolMiner*
ln -s /opt/miners/custom/lolminer/lolMiner /opt/miners/custom/custom
chmod +x /opt/miners/custom/custom
echo 'custom lolminer-'$VERSION > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
