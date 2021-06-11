VERSION='5.6d'

disallow
minestop
echo 'waiting for 5 seconds before continue'
sleep 5
curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/custom/hash-monitor
cd /tmp
rm -rf PhoenixMiner*
wget -q https://phoenixminer.info/downloads/PhoenixMiner_$VERSION\_Linux.tar.gz
#wget -q https://github.com/Phoenix-Miner/PhoenixMiner/releases/download/$VERSION/PhoenixMiner_$VERSION\_Linux.zip
rm /opt/miners/custom/custom
rm -rf /opt/miners/custom/phoenix
mkdir /opt/miners/custom/phoenix
#unzip PhoenixMiner*
tar -xvf PhoenixMiner*
mv ./PhoenixMiner_$VERSION\_Linux/* /opt/miners/custom/phoenix
rm -rf PhoenixMiner*
ln -s /opt/miners/custom/phoenix/PhoenixMiner /opt/miners/custom/custom
chmod +x /opt/miners/custom/custom
echo 'custom phoenix-'$VERSION > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
