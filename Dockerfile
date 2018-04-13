FROM ubuntu:xenial

WORKDIR /bin/app

ADD bitcoin-0.12.1 /bin/app
ADD bitcoin.conf /bin/app/bitcoin.conf

EXPOSE 8332

CMD ["/bin/app/bin/bitcoind", "-conf=/bin/app/bitcoin.conf"]
