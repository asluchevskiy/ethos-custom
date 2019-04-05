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

## gminer miner config sample
```
miner abbccd custom
custom=flags --algo 150_5 --server beam.eu.nicehash.com --port 3370 --user YOUR_BTC_ADRESS.WORKER --api 9000
```
## cryptodredge miner config sample
```
miner abbccd custom
custom=flags -a mtp -o stratum+tcp://mtp.eu.nicehash.com:3374 -u YOUR_BTC_ADRESS.WORKER
```
Where ```abbccd``` is your EthOS rig ID.

## links

 * [ethos mining distro](http://ethosdistro.com)
