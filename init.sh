#!/bin/bash

apt-get update && apt-get upgrade -y

apt-get install rsync curl neovim -y

curl -sSL https://get.docker.com/ | sh

useradd -m -u 1006 -s /usr/bin/bash data

useradd -m -u 1011 -s /usr/bin/bash roon && usermod -aG data roon

chown -R roon:roon /mnt/configs/roon

docker compose pull
docker compose up