FROM php:cli

WORKDIR /proxy

RUN curl -L https://leproxy.org/leproxy-latest.php -o leproxy.php

ENV USERNAME user
ENV PASSWORD pass
ENV PORT 8081

CMD php leproxy.php ${USERNAME}:${PASSWORD}@0.0.0.0:${PORT}
#CMD php leproxy.php 0.0.0.0:$PORT --allow-unprotected

EXPOSE $PORT