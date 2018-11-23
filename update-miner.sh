TMP_DIR=/tmp/ethos-t-rex
mkdir $TMP_DIR
git -C $TMP_DIR clone https://github.com/asluchevskiy/ethos-t-rex.git
minestop
disallow
sudo cp -r $TMP_DIR/ethos-t-rex/opt/miners/* /opt/miners/
sudo service ethos-miner-monitor restart
rm -rf $TMP_DIR
allow
