VERSION='30.0'

disallow
minestop
echo 'waiting for 15 seconds before continue'
sleep 15
curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/custom/hash-monitor
cd /tmp
wget -q https://github.com/NebuTech/NBMiner/releases/download/v$VERSION/NBMiner_$VERSION\_Linux.tgz
rm /opt/miners/custom/custom
rm -rf /opt/miners/custom/nbminer
mkdir /opt/miners/custom/nbminer
tar -xvf NBMiner_$VERSION\_Linux.tgz
cp -R /tmp/NBMiner_Linux/* /opt/miners/custom/nbminer
rm -rf NBMiner_*
ln -s /opt/miners/custom/nbminer/nbminer /opt/miners/custom/custom
echo 'custom nbminer-'$VERSION > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
echo 'done'
