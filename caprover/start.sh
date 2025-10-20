#!/bin/bash

cp -f /usr/src/app/bin/conf.monolithic.json /usr/src/app/conf.json

if [[ "$ALLOW_SIGNUP" == "false" ]]; then
  sed -i'.bak' -e 's/"allow_signup": true/"allow_signup": false/g' /usr/src/app/conf.json
fi
sed -i'.bak' -e 's/"storage_path": "\/usr\/share\/armadietto"/"storage_path": "\/usr\/src\/app\/data\/armadietto"/g' /usr/src/app/conf.json
sed -i'.bak' -e 's/"log_dir": "logs"/"log_dir": "\/usr\/src\/app\/data\/logs"/g' /usr/src/app/conf.json
rm /usr/src/app/conf.json.bak

ln -s /usr/src/app/bin/armadietto.js /usr/local/bin/armadietto
armadietto -c /usr/src/app/conf.json
