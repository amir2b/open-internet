# Shadowsocks with kcptun by docker

## Setup
```shell
git clone --single-branch --branch shadowsocks https://github.com/amir2b/open-internet.git .
make env
make build
make start
```

## Shadowsocks environment
PASSWORD=xxxxxxxxxx  
METHOD=aes-256-gcm  

port=29900

## Kcptun environment
MODE=fast3  
SOCKBUF=16777217  
DSCP=46  

key=xxxxxxxxxx  
nocomp

---
## Other command

Stop containers:
```shell
make down
```

Restart containers:
```shell
make restart
```

Log of containers:
```shell
make logs
```
