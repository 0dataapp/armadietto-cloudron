#!/bin/bash

cp -f /opt/armadietto/bin/conf.monolithic.json /etc/armadietto/conf.json

if [[ "$ALLOW_SIGNUP" == "false" ]]; then
  sed -i'.bak' -e 's/"allow_signup": true/"allow_signup": false/g' /etc/armadietto/conf.json
  rm /etc/armadietto/conf.json.bak
fi

ln -s /opt/armadietto/bin/armadietto.js /usr/local/bin/armadietto
armadietto -c /etc/armadietto/conf.json
