FROM debian:stable-slim

RUN apt-get update && apt-get install -y \
  curl \
  dnsutils \
  git \
  inetutils-ping \
  openssl \
  traceroute \
  wget \
  zsh \
  && apt-get clean

CMD ["zsh"]
