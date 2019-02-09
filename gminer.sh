VERSION='1_31'
disallow
minestop
echo 'waiting for 15 seconds before continue'
sleep 15
curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/custom/hash-monitor
cd /tmp
wget -q http://remote.rigshop.ru/gminer_$VERSION_minimal_linux64.tar.gz
rm /opt/miners/custom/custom
rm -rf /opt/miners/custom/gminer
mkdir /opt/miners/custom/gminer
tar -xvf gminer_$VERSION\_minimal_linux64.tar.gz -C /opt/miners/custom/gminer
rm -rf gminer_*
ln -s /opt/miners/custom/gminer/miner /opt/miners/custom/custom
echo 'custom gminer-'$VERSION > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
echo 'done'
