VERSION='v16.2.1-ae15079'

disallow
minestop
echo 'waiting for 15 seconds before continue'
sleep 15
curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/custom/hash-monitor
cd /tmp
wget https://www.bminercontent.com/releases/bminer-$VERSION\-amd64.tar.xz
rm /opt/miners/custom/custom
rm -rf /opt/miners/custom/bminer
mkdir /opt/miners/custom/bminer
tar -xvf bminer-$VERSION\-amd64.tar.xz
cp -R /tmp/bminer-$VERSION/* /opt/miners/custom/bminer
rm -rf bminer*
ln -s /opt/miners/custom/bminer/bminer /opt/miners/custom/custom
echo 'custom bminer-'$VERSION > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
echo 'done'
