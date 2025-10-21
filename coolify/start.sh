#!/bin/sh

if [[ "$ALLOW_SIGNUP" == "false" ]]; then
  sed -i'.bak' -e 's/"allow_signup": true/"allow_signup": false/g' /etc/armadietto/conf.json
fi

if [[ "$ALLOW_SIGNUP" != "false" ]]; then
  sed -i'.bak' -e 's/"allow_signup": false/"allow_signup": true/g' /etc/armadietto/conf.json
fi

armadietto -c /etc/armadietto/conf.json
