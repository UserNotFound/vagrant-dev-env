# https://docs.docker.com/engine/installation/linux/ubuntulinux/

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates

sudo apt-key adv \
               --keyserver hkp://ha.pool.sks-keyservers.net:80 \
               --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

REPO="deb https://apt.dockerproject.org/repo ubuntu-xenial main"
echo "${REPO}" | sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update -y
sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual -y

sudo apt-get install docker-engine -y
sudo service docker start

# https://docs.docker.com/compose/install/

sudo curl -L https://github.com/docker/compose/releases/download/1.24.1/run.sh > /tmp/docker-compose
sudo mv /tmp/docker-compose /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
sudo docker-compose --help

#Other dependencies
sudo apt-get install -y make


