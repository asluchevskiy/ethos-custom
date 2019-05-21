VERSION='1_43'
VER='1.43'
disallow
minestop
echo 'waiting for 15 seconds before continue'
sleep 15
curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/custom/hash-monitor
cd /tmp
wget -q https://github.com/develsoftware/GMinerRelease/releases/download/$VER/gmine_$VERSION\_linux64.tar.xz
rm /opt/miners/custom/custom
rm -rf /opt/miners/custom/gminer
mkdir /opt/miners/custom/gminer
tar -xvf gminer_$VERSION\_linux64.tar.xz -C /opt/miners/custom/gminer
rm -rf gminer_*
ln -s /opt/miners/custom/gminer/miner /opt/miners/custom/custom
echo 'custom gminer-'$VERSION > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
echo 'done'
