# ethos-custom
custom miner integration into EthOS mining distro.

Works with ethos 1.3.3

## install

Run this command to install or full update:
```
source <(curl -s https://raw.githubusercontent.com/asluchevskiy/ethos-custom/master/install.sh)
```
### install miners
```
source <(curl -s https://raw.githubusercontent.com/asluchevskiy/ethos-custom/master/t-rex.sh)
```
```
source <(curl -s https://raw.githubusercontent.com/asluchevskiy/ethos-custom/master/nbminer.sh)
```
```
source <(curl -s https://raw.githubusercontent.com/asluchevskiy/ethos-custom/master/bminer.sh)
```
```
source <(curl -s https://raw.githubusercontent.com/asluchevskiy/ethos-custom/master/cryptodredge.sh)
```
```
source <(curl -s https://raw.githubusercontent.com/asluchevskiy/ethos-custom/master/gminer.sh)
```
```
source <(curl -s https://raw.githubusercontent.com/asluchevskiy/ethos-custom/master/phoenix.sh)
```
```
source <(curl -s https://raw.githubusercontent.com/asluchevskiy/ethos-custom/master/noncerpro-nimiq-cuda.sh)
```
## flags for hashing
t-rex
```
-J --api-bind-http 0
```
nbminer
```
--api 127.0.0.1:9000
```
bminer
```
-api 127.0.0.1:1880
```
cryptodredge
```
--api-type ccminer-tcp --api-bind 127.0.0.1:4068
```
gminer
```
--api 9000
```
phoenix
```
-
```

## gminer config sample
```
miner abbccd custom
custom=flags --algo 150_5 --server beam.eu.nicehash.com --port 3370 --user YOUR_BTC_ADRESS.WORKER --api 9000
```
Where ```abbccd``` is your EthOS rig ID.

## links

 * [ethos mining distro](http://ethosdistro.com)
