ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo "$TZ" > /etc/timezone

apt update
apt install -y \
    git \
    dnsutils \
    unzip \
    openssh-client \
    rsync
