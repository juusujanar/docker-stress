FROM ubuntu:focal

RUN apt update && \
  apt install -y stress && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/stress", "--verbose"]
