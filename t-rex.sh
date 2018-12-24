disallow
minestop
echo 'waiting for 15 seconds before continue'
sleep 15
cd /tmp
wget https://github.com/trexminer/T-Rex/releases/download/0.8.9/t-rex-0.8.9-linux-cuda10.0.tar.gz
rm /opt/miners/custom/custom
rm -rf /opt/miners/custom/t-rex
mkdir /opt/miners/custom/t-rex
tar -xzf t-rex-0.8.9-linux-cuda10.0.tar.gz -C /opt/miners/custom/t-rex
rm t-rex-0.8.9-linux-cuda10.0.tar.gz
ln -s /opt/miners/custom/t-rex/t-rex /opt/miners/custom/custom
echo 'custom trex-0.8.9' > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
echo 'done'
