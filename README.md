# ethos-custom
custom miner integration into EthOS mining distro.

Works with ethos 1.3.3, other versions has not been tested.

## t-rex miner config sample
```
custom=proxypool1 x16r.eu.nicehash.com:3366
custom=proxywallet your_btc_wallet
custom=poolpass1 x
custom=flags -a x16r -J --api-bind-http 0

miner abbccd custom
```

Where ```abbccd``` is your EthOS rig ID.
Or you can use t-rex miner globally by default for your all rigs:

```
globalminer custom
```

## links

 * [ethos mining distro](http://ethosdistro.com)
 * [official t-rex miner thread at bitcointalk](https://bitcointalk.org/index.php?topic=4432704.0)
 * [t-rex github releases page](https://github.com/trexminer/T-Rex/releases/)
