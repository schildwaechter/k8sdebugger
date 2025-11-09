FROM debian:stable-slim

# Version info on starting root shell
# hadolint ignore=SC2016
RUN echo 'echo "Running Debian $(cat /etc/debian_version) built $(cat /etc/build_time)"' >> /root/.bashrc
# hadolint ignore=DL3059
RUN date +"%d %b %Y @ %H:%M:%S %Z" > /etc/build_time

# We explicitly want latest packes versions at time of compile
# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    dnsutils \
    git \
    inetutils-ping \
    iproute2 \
    jq \
    openssl \
    procps \
    rsync \
    sqlite3 \
    telnet \
    traceroute \
    vim \
    wget \
    yq \
    zsh \
    && apt-get clean && rm -rf /var/lib/apt/lists

CMD ["zsh"]
