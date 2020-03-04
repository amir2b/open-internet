FROM alpine

WORKDIR /proxy

RUN apk --no-cache add curl

RUN curl -L https://github.com/xtaci/kcptun/releases/download/v20200103/kcptun-linux-amd64-20200103.tar.gz | tar -xz

CMD ./server_linux_amd64 -t leproxy:8081 -l :8082 -mode fast3 -nocomp -sockbuf 16777217 -dscp 46

EXPOSE 8082/udp