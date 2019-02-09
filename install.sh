disallow
minestop
sleep 5
TMP_DIR=/tmp
git -C $TMP_DIR clone https://github.com/unrealjke/ethos-custom.git
sudo cp -r $TMP_DIR/ethos-custom/opt/* /opt/
sudo chown 1000:1000 /opt/miners/custom
sudo chown 1000:1000 /opt/miners/custom/*
sudo kill `ps ax | grep /opt/ethos/sbin/ethos-miner-daemon | grep -v grep | awk {'print $1'}`
rm -rf $TMP_DIR/ethos-custom
