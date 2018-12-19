# ethos-t-rex
t-rex miner integration into EthOS mining distro.

Works with ethos 1.3.3, other versions has not been tested. Default algo is x16r.

## install

Run this command to install or full update:
```
wget -O - https://raw.githubusercontent.com/asluchevskiy/ethos-t-rex/master/install.sh | sh
```
### update
To only update miner to the latest verion, run:
```
wget -O - https://raw.githubusercontent.com/asluchevskiy/ethos-t-rex/master/update-miner.sh | sh
```

### manual update
To update manually use the following commands:
```
minestop
disallow
```
This will disable and stop mining. Wait for 15 seconds. Then use the correct URL with latest t-rex version for linux and cuda10 and unpack it:
```
cd /opt/miners/t-rex
sudo wget https://github.com/trexminer/T-Rex/releases/download/0.8.3/t-rex-0.8.3-linux-cuda10.0.tar.gz
sudo tar xvf t-rex-0.8.3-linux-cuda10.0.tar.gz
```
Then enable mining again:
```
allow
```
Optional: you can reboot.

## config sample
```
t-rex=proxypool1 x16r.eu.nicehash.com:3366
t-rex=proxywallet your_btc_wallet
t-rex=poolpass1 x
t-rex=flags -a x16r

miner abbccd t-rex
```

Where ```abbccd``` is your EthOS rig ID.
Or you can use t-rex miner globally by default for your all rigs:

```
globalminer t-rex
```

## links

 * [ethos mining distro](http://ethosdistro.com)
 * [official t-rex miner thread at bitcointalk](https://bitcointalk.org/index.php?topic=4432704.0)
 * [t-rex github releases page](https://github.com/trexminer/T-Rex/releases/)
