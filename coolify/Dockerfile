FROM remotestorage/armadietto-monolithic:latest

WORKDIR /opt/armadietto

ADD . .

ARG ALLOW_SIGNUP=${ALLOW_SIGNUP}
ENV ALLOW_SIGNUP=${ALLOW_SIGNUP}

CMD ["bash", "coolify/start.sh"]
