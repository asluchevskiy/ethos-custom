VERSION='2.3.1'

disallow
minestop
echo 'waiting for 15 seconds before continue'
sleep 15
curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/custom/hash-monitor
cd /tmp
wget -q https://whalepool-cdn.fra1.digitaloceanspaces.com/software/danila-miner/danila-miner-2.3.1-xenial-hive.tar.gz
tar -xf ./danila-miner-2.3.1-xenial-hive.tar.gz
rm -rf /opt/miners/custom/danila
mkdir /opt/miners/custom/danila
mv danila-miner-2.3.1-xenial/* /opt/miners/custom/danila
rm -rf mv danila-miner*
rm /opt/miners/custom/custom
ln -s /opt/miners/custom/danila/danila-miner /opt/miners/custom/custom
echo 'custom danila-'$VERSION > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
echo 'done'
