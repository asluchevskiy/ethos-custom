VERSION=''

if [ -z "$VERSION" ];
then
        GET='https://github.com'$(curl -Ls https://github.com/develsoftware/GMinerRelease/releases/latest | grep linux | sed -n 's/.*href="\([^"]*\).*/\1/p')
        VERSION=$(echo $GET | grep -Po '\d_\d*')
else
        GET='https://github.com/develsoftware/GMinerRelease/releases/download/'$VERSION'/gminer_'${VERSION/./_}'_linux64.tar.xz'

fi

disallow
minestop
echo 'waiting for 5 seconds before continue'
sleep 5
curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/custom/hash-monitor
cd /tmp
wget -q $GET
rm /opt/miners/custom/custom
rm -rf /opt/miners/custom/gminer
mkdir /opt/miners/custom/gminer
tar -xvf gminer_${VERSION/./_}_linux64.tar.xz -C /opt/miners/custom/gminer
rm -rf gminer_*
ln -s /opt/miners/custom/gminer/miner /opt/miners/custom/custom
echo 'custom gminer-'$VERSION > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
