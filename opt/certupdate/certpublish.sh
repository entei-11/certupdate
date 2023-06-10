#!/bin/bash

domain=$1

if [ -z "$domain" ];
then
  echo "Usage: $0 <domain>"
  exit 1;
fi

/usr/local/openvpn_as/scripts/sacli --key "cs.priv_key" --value_file "/etc/letsencrypt/live/$domain/privkey.pem" ConfigPut
/usr/local/openvpn_as/scripts/sacli --key "cs.cert" --value_file "/etc/letsencrypt/live/$domain/fullchain.pem" ConfigPut
/usr/local/openvpn_as/scripts/sacli start
