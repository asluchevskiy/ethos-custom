TMP_DIR=/tmp/ethos-t-rex
mkdir $TMP_DIR
wget http://security.ubuntu.com/ubuntu/pool/main/g/gcc-5/gcc-5-base_5.4.0-6ubuntu1~16.04.10_amd64.deb -P $TMP_DIR
wget http://security.ubuntu.com/ubuntu/pool/main/g/gcc-5/libstdc++6_5.4.0-6ubuntu1~16.04.10_amd64.deb -P $TMP_DIR
sudo dpkg -i $TMP_DIR/*.deb
git -C $TMP_DIR clone https://github.com/asluchevskiy/ethos-t-rex.git
sudo cp -r $TMP_DIR/ethos-t-rex/opt/* /opt/
sudo kill `ps ax | grep /opt/ethos/sbin/ethos-miner-daemon | grep -v grep | awk {'print $1'}`
rm -rf $TMP_DIR
