# Shadowsocks server with kcptun by docker

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

Make project directory for project (change `PROJECT_DIR`):
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
make start
```

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

# Client

## Shadowsocks client config:
password=xxxxxxxxxx  
method=aes-256-gcm  
port=8388 or 18388

## Kcptun client config:
key=xxxxxxxxxx  
mode=fast3  
sockbuf=16777217  
dscp=46  
nocomp