apt-get update \
    && apt-get install -y ruby python
add-apt-repository -y ppa:git-core/ppa \
    && apt-get update \
    && apt-get install -y git