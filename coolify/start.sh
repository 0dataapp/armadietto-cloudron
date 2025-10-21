#!/bin/sh

# TODO: fix permissions issues
if [[ "$ALLOW_SIGNUP" == "false" ]]; then
  sed -i 's/"allow_signup": true/"allow_signup": false/' /etc/armadietto/conf.json
else 
  sed -i 's/"allow_signup": false/"allow_signup": true/' /etc/armadietto/conf.json
fi

armadietto -c /etc/armadietto/conf.json
