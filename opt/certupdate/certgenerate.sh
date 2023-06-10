#!/bin/bash

domain=$1

if [ -z "$domain" ];
then
  echo "Usage: $0 <domain>"
  exit 1;
fi

add-apt-repository ppa:certbot/certbot
apt-get update 
apt install certbot

certbot certonly --standalone --preferred-challenges http -d $domain