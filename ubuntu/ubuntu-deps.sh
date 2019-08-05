apt-get update \
    && apt-get install -y ruby python python-pip \
    && pip install virtualenv && pip install apt-select
sudo apt-select
add-apt-repository -y ppa:git-core/ppa \
    && apt-get update \
    && apt-get install -y git
apt-get install -y ruby-bundler ruby-dev
apt-get install -y postgresql-client-10
