FROM cloudron/base:5.0.0@sha256:04fd70dbd8ad6149c19de39e35718e024417c3e01dc9c6637eaf4a41ec4e596c

RUN mkdir -p /app/code
WORKDIR /app/code

ARG COMMIT=2a93a1571638b20032985aa8fbd4d82c6b6e2386
RUN curl -L https://github.com/remotestorage/armadietto/archive/${COMMIT}.zip -o archive.zip && unzip -q archive.zip && mv "./armadietto-${COMMIT}/"* . && rm -r "./armadietto-${COMMIT}/" archive.zip

COPY start.sh ./

RUN npm ci --production

CMD [ "./start.sh" ]
