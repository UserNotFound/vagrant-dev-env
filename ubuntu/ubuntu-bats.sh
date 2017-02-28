apt-get update \
    && apt-get install -y curl unzip\
    && curl -sL https://github.com/sstephenson/bats/archive/master.zip > /tmp/bats.zip \
    && cd /tmp \
    && unzip -q bats.zip \
    && ./bats-master/install.sh /usr/local \
    && ln -sf /usr/local/libexec/bats /usr/local/bin/bats \
    && rm -rf /tmp/bats* \
