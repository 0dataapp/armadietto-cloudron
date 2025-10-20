FROM node:20

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ARG COMMIT=2793236cb9cbe244dd5fca8095a156c8c562acad
RUN curl -L https://github.com/remotestorage/armadietto/archive/2793236cb9cbe244dd5fca8095a156c8c562acad.zip -o archive.zip && unzip -q archive.zip && mv "./armadietto-${COMMIT}/"* . && rm -r "./armadietto-${COMMIT}/" archive.zip

RUN npm ci --production

ADD . .

ARG PATH_APP="/usr/src/app/data"
ARG PATH_DATA="/usr/src/app/data/armadietto"
ARG PATH_LOGS="/usr/src/app/data/logs"

RUN mkdir -m 0700 -p $PATH_APP
RUN mkdir -m 0700 -p $PATH_DATA
RUN mkdir -m 0700 -p $PATH_LOGS

ARG ALLOW_SIGNUP=${ALLOW_SIGNUP}
ENV ALLOW_SIGNUP=${ALLOW_SIGNUP}

ARG PORT="8000"
ENV PORT=$PORT
EXPOSE $PORT

CMD ["bash", "caprover/start.sh"]
