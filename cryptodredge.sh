disallow
minestop
echo 'waiting for 15 seconds before continue'
sleep 15
curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/opt/miners/custom/hash-monitor > /opt/miners/custom/hash-monitor
cd /tmp
wget https://github.com/technobyl/CryptoDredge/releases/download/v0.15.1/CryptoDredge_0.15.1_cuda_10.0_linux.tar.gz
rm -rf /opt/miners/custom/cryptodredge
mkdir /opt/miners/custom/cryptodredge
tar -xzf CryptoDredge_0.15.1_cuda_10.0_linux.tar.gz
rm CryptoDredge_0.15.1_cuda_10.0_linux.tar.gz
mv ./CryptoDredge_0.15.1/* /opt/miners/custom/cryptodredge
rm -rf ./CryptoDredge_0.15.1
rm /opt/miners/custom/custom
ln -s /opt/miners/custom/cryptodredge/CryptoDredge /opt/miners/custom/custom
echo 'custom cryptodredge-0.15.1' > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
echo 'done'
