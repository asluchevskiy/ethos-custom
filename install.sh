TMP_DIR=/tmp
mkdir $TMP_DIR
git -C $TMP_DIR clone https://github.com/unrealjke/ethos-custom.git
sudo cp -r $TMP_DIR/ethos-custom/opt/* /opt/
sudo kill `ps ax | grep /opt/ethos/sbin/ethos-miner-daemon | grep -v grep | awk {'print $1'}`
rm -rf $TMP_DIR/ethos-custom
