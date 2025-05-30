#!/bin/bash

set -eu

if [[ ! -f /app/data/conf.json ]]; then
    cp /app/code/bin/conf.monolithic.json /app/data/conf.json

    sed -i'.bak' -e 's/"allow_signup": false/"allow_signup": true/g' /app/data/conf.json
    sed -i'.bak' -e 's/"storage_path": "\/usr\/share\/armadietto"/"storage_path": "\/app\/data\/armadietto"/g' /app/data/conf.json
    sed -i'.bak' -e 's/"log_dir": "logs"/"log_dir": "\/app\/data\/logs"/g' /app/data/conf.json
    
    rm /app/data/conf.json.bak
fi

chown -R cloudron:cloudron /app/data

mkdir -p /app/data/armadietto
mkdir -p /app/data/logs

/app/code/bin/armadietto.js -c /app/data/conf.json
