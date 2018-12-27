# ethos-custom
custom miner integration into EthOS mining distro.

Works with ethos 1.3.3, other versions has not been tested.

## install

Run this command to install or full update:
```
source <(curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/install.sh)
```
### install miners
To install t-rex miner
```
source <(curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/t-rex.sh)
```
To install nbminer
```
source <(curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/nbminer.sh)
```
To install cryptodredge
```
source <(curl -s https://raw.githubusercontent.com/unrealjke/ethos-custom/master/cryptodredge.sh)
```

## t-rex miner config sample
```
miner abbccd custom
custom=proxypool1 x16r.eu.nicehash.com:3366
custom=proxywallet your_btc_wallet
custom=poolpass1 x
custom=flags -a x16r -J --api-bind-http 0
```
## nbminer miner config sample
```
miner abbccd custom
custom=proxypool1 btm.f2pool.com:9221
custom=proxywallet your_btm_wallet
custom=flags -a tensority --api 127.0.0.1:9000
```
## cryptodredge miner config sample
```
miner abbccd custom
custom=proxypool1 suqa-pool.beepool.org:9504
custom=proxywallet your_suqa_wallet
custom=flags -a x22i
```
Where ```abbccd``` is your EthOS rig ID.

## links

 * [ethos mining distro](http://ethosdistro.com)
