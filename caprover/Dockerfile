FROM node:20

RUN mkdir -p /opt/armadietto
WORKDIR /opt/armadietto

ARG COMMIT=2793236cb9cbe244dd5fca8095a156c8c562acad
RUN curl -L https://github.com/remotestorage/armadietto/archive/2793236cb9cbe244dd5fca8095a156c8c562acad.zip -o archive.zip && unzip -q archive.zip && mv "./armadietto-${COMMIT}/"* . && rm -r "./armadietto-${COMMIT}/" archive.zip

RUN npm ci --production

ADD . .

ARG CONFIG_PATH_STORAGE="/usr/share/armadietto"
ARG CONFIG_PATH_DIR="/etc/armadietto"
ARG CONFIG_PATH_LOGS="/opt/armadietto/logs"

RUN mkdir -m 0700 $CONFIG_PATH_STORAGE
RUN mkdir -m 0700 $CONFIG_PATH_DIR
RUN mkdir -m 0700 $CONFIG_PATH_LOGS

ARG USER="armadietto"
ENV USER=$USER
RUN adduser -HD $USER

RUN chown $USER $CONFIG_PATH_STORAGE
RUN chown $USER $CONFIG_PATH_LOGS
RUN chown $USER $CONFIG_PATH_DIR

ENV NODE_ENV=production

ARG PORT="8000"
ENV PORT=$PORT
EXPOSE $PORT

CMD ["bash", "caprover/start.sh"]
