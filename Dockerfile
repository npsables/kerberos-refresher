FROM debian:buster-slim

COPY refresh.sh /refresh.sh

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        krb5-user \
        libpam-krb5 \
        libkrb5-dev 

ENTRYPOINT [ "/refresh.sh" ]
