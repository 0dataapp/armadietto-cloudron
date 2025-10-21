FROM remotestorage/armadietto-monolithic:latest

WORKDIR /opt/armadietto

ADD . .

ARG ALLOW_SIGNUP=${ALLOW_SIGNUP}
ENV ALLOW_SIGNUP=${ALLOW_SIGNUP}

CMD ["echo", "coolify/start.sh"]
