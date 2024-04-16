FROM debian:stable-slim

RUN apt-get update && apt-get install -y \
  curl \
  dnsutils \
  git \
  inetutils-ping \
  iproute2 \
  openssl \
  procps \
  rsync \
  sqlite3 \
  telnet \
  traceroute \
  vim \
  wget \
  zsh \
  && apt-get clean

CMD ["zsh"]
