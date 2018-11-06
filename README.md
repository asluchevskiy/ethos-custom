# ethos-t-rex
t-rex miner integration into EthOS mining distro.

Works with ethos 1.3.3, other versions has not been tested. Default algo is x16r.

## install

Run this command:
```
wget -O - https://raw.githubusercontent.com/asluchevskiy/ethos-t-rex/master/install.sh | sh
```

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
