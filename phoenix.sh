VERSION='5.0e'

disallow
minestop
echo 'waiting for 5 seconds before continue'
sleep 5
curl -s https://raw.githubusercontent.com/asluchevskiy/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/custom/hash-monitor
cd /tmp
rm -rf PhoenixMiner*
PHOENIX_TAR=PhoenixMiner_$VERSION\_Linux.tar.gz
wget -q https://github.com/asluchevskiy/ethos-custom/raw/master/src/$PHOENIX_TAR
rm /opt/miners/custom/custom
rm -rf /opt/miners/custom/phoenix
mkdir /opt/miners/custom/phoenix
tar xvf $PHOENIX_TAR
mv ./PhoenixMiner_$VERSION\_Linux/* /opt/miners/custom/phoenix
rm -rf PhoenixMiner*
ln -s /opt/miners/custom/phoenix/PhoenixMiner /opt/miners/custom/custom
chmod +x /opt/miners/custom/custom
echo 'custom phoenix-'$VERSION > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
