disallow
minestop
sleep 5
TMP_DIR=/tmp/ethos-custom
mkdir $TMP_DIR
wget -q http://security.ubuntu.com/ubuntu/pool/main/g/gcc-5/gcc-5-base_5.4.0-6ubuntu1~16.04.12_amd64.deb -P $TMP_DIR
wget -q http://ge.archive.ubuntu.com/ubuntu/pool/main/g/gcc-5/libstdc++6_5.4.0-6ubuntu1~16.04.12_amd64.deb -P $TMP_DIR
sudo dpkg -i $TMP_DIR/*.deb
git -C $TMP_DIR clone https://github.com/unrealjke/ethos-custom.git
sudo cp -r $TMP_DIR/ethos-custom/opt/* /opt/
sudo chown 1000:1000 /opt/miners/custom
sudo chown 1000:1000 /opt/miners/custom/*
sudo kill `ps ax | grep /opt/ethos/sbin/ethos-miner-daemon | grep -v grep | awk {'print $1'}`
rm -rf $TMP_DIR/ethos-custom
