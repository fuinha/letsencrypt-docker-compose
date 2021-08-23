#!/bin/bash


# LINODE ADD DOMAIN NEW PYFOUNDATION.ORG WWW.PYFOUNDATION.ORG A AAAA
www.pyfoundation.org pyfoundation.org   projetoslinux@gmail.com
www.pyingenieriaysistemas.tk pyingenieriaysistemas.tk marcelu.phd@gmail.com
# GOTO GODADDY ADD 
    ns1.linode.com
    ns2.linode.com
    ns3.linode.com
    ns4.linode.com
    ns5.linode.com
    
sudo ufw allow http
sudo ufw allow https
sudo ufw status
sudo apt update

#install docker docker-compose pm2 nodejs npm yarn nvm ufw
git clone https://github.com/pyfundation/letsencrypt-docker-compose.git

nano config.env 
#your 2 domains your 2 mails 

nano nginx/default.conf 
#change your 2 domains

nano docker-compose.yaml 
#change your 2 domains

# in production
CERTBOT_TEST_CERT=0

# create volumes
docker volume create --name=devcomanda_nginx_ssl
docker volume create --name=devcomanda_certbot_certs
docker-compose up --build

docker-compose down

nano config.env
CERTBOT_TEST_CERT=0

docker volume rm devcomanda_certbot_certs
docker volume create --name=devcomanda_certbot_certs

docker-compose up