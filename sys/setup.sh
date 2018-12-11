apt-get remove docker docker-engine docker.io

apt-get update

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update

apt-get install docker-ce

mkdir -p /mnt/docker
mkdir -p /mnt/docker/portainer
mkdir -p /mnt/docker/traefik

touch /mnt/docker/traefik/docker-compose.yml
touch /mnt/docker/traefik/acme.json && chmod 600 /mnt/docker/traefik/acme.json
touch /mnt/docker/traefik/traefik.toml

cp traefik.docker-compose.yml /mnt/docker/traefik/docker-compose.yml
