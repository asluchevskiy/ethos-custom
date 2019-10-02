disallow
minestop
echo 'waiting for 15 seconds before continue'
sleep 15
curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/custom/hash-monitor
cd /tmp
wget -q https://github.com/trexminer/T-Rex/releases/download/0.14.4/t-rex-0.14.4-linux-cuda10.0.tar.gz
rm /opt/miners/custom/custom
rm -rf /opt/miners/custom/t-rex
mkdir /opt/miners/custom/t-rex
tar -xzf t-rex-0.14.4-linux-cuda10.0.tar.gz -C /opt/miners/custom/t-rex
rm t-rex-0.14.4-linux-cuda10.0.tar.gz
ln -s /opt/miners/custom/t-rex/t-rex /opt/miners/custom/custom
echo 'custom t-rex-0.14.4' > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
echo 'done'
