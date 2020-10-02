FROM xtaci/kcptun
LABEL maintainer="Amir Bashiri"

ENV MODE=fast3
ENV SOCKBUF=16777217
ENV DSCP=46

CMD server --target shadowsocks:8388 --mode "${MODE}" --sockbuf "${SOCKBUF}" --dscp "${DSCP}" --nocomp