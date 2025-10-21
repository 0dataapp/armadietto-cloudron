FROM remotestorage/armadietto-monolithic:latest

RUN mkdir -p /opt/armadietto
WORKDIR /opt/armadietto

ADD . .

ARG ALLOW_SIGNUP=${ALLOW_SIGNUP}
ENV ALLOW_SIGNUP=${ALLOW_SIGNUP}

CMD ["sh", "coolify/start.sh"]
