FROM debian:stretch
LABEL maintainer="gge2849@hotmail.com"

ENV DIST stretch

RUN apt-get -qq update && apt-get -qq upgrade -y \
 && apt-get -qq install -y --no-install-recommends \
    build-essential \
    cowbuilder \
    curl \
    debian-archive-keyring \
    debootstrap \
    dh-autoreconf \
    dh-systemd \
    fakechroot \
    fakeroot \
    git-buildpackage \
    gosu \
    lsb-release \
    python-apt \
    python-jinja2 \
    python-lxml \
    python-pip \
    python-requests \
    sudo \
    vim \
    wget \
 && apt-get -qq autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*

# Pyang not available as Debian package
RUN pip2 install pyang requests-file \
 && ln -s /usr/local/bin/pyang /usr/bin

# Install shadow socks
RUN wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
RUN chmod +x shadowsocks-all.sh
RUN ./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log
 


