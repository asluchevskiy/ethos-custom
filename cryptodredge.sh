VERSION='0.20.2'

disallow
minestop
echo 'waiting for 15 seconds before continue'
sleep 15
curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/cu$
cd /tmp
wget -q https://github.com/technobyl/CryptoDredge/releases/download/v$VERSION/CryptoDredge_$VERSION\_cuda_10.0_linux.tar.gz
rm -rf /opt/miners/custom/cryptodredge
mkdir /opt/miners/custom/cryptodredge
tar -xzf CryptoDredge_$VERSION\_cuda_10.0_linux.tar.gz
rm CryptoDredge_$VERSION\_cuda_10.0_linux.tar.gz
mv ./CryptoDredge_$VERSION/* /opt/miners/custom/cryptodredge
rm -rf ./CryptoDredge*
rm /opt/miners/custom/custom
ln -s /opt/miners/custom/cryptodredge/CryptoDredge /opt/miners/custom/custom
echo 'custom cryptodredge-'$VERSION > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
