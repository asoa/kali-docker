# Kali metapackage (kali-tools-top10)
Docker kali build with external postgresql connection
## Getting started
Prerequisites
1. Docker
2. Make

Modify secrets.sh.bu (remove .bu) with *your* passwords

Source the secrets into your shell env
```
. ./secrets.sh
```
Pull and build containers
```
make build
```
Start the containers
```
make up
```
The database init scripts will be executed and you will be dropped into the kali container
```
msfconsole
```
Stop the containers
```
make down
```
Remove the containers
```
make clean
```
