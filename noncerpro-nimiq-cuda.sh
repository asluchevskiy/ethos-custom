VERSION='3.3.0'

disallow
minestop
echo 'waiting for 15 seconds before continue'
sleep 5
curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/cu$
cd /tmp
wget -q https://github.com/NoncerPro/noncerpro-nimiq-cuda/releases/download/v$VERSION/noncerpro-cuda-linux-$VERSION.tar.gz
rm -rf /opt/miners/custom/noncerpro-nimiq-cuda
mkdir /opt/miners/custom/noncerpro-nimiq-cuda
tar -xzf noncerpro-cuda-linux-$VERSION.tar.gz -C /opt/miners/custom/noncerpro-nimiq-cuda
rm noncerpro-cuda-linux-$VERSION.tar.gz
rm /opt/miners/custom/custom
ln -s /opt/miners/custom/noncerpro-nimiq-cuda/noncerpro /opt/miners/custom/custom
echo 'noncerpro-nimiq-cuda-'$VERSION > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
