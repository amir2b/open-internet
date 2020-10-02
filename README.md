# Shadowsocks with kcptun by docker

## Setup
update system packages:
```shell
sudo apt update -y
sudo apt upgrade -y
```

Install [docker](https://docs.docker.com/engine/install/ubuntu/).

Install [docker-compose](https://docs.docker.com/compose/install/).

Install other tools:
```shell
sudo apt install -y git make
```

Make project directory for project (Change `PROJECT_DIR`):
```shell
mkdir PROJECT_DIR
cd PROJECT_DIR
```

Clone project from git:
```shell
git clone --single-branch --branch shadowsocks https://github.com/amir2b/open-internet.git .
```

Init project:
```shell
make init
make build
make start
```

## Shadowsocks environment:
PASSWORD=xxxxxxxxxx  
METHOD=aes-256-gcm  

port=29900

## Kcptun environment:
MODE=fast3  
SOCKBUF=16777217  
DSCP=46  

key=xxxxxxxxxx  
nocomp

---
## Usefull commands

Show containers log:
```shell
make logs
```

Stop containers:
```shell
make stop
```

Stop and remove containers:
```shell
make down
```

Restart containers:
```shell
make restart
```
