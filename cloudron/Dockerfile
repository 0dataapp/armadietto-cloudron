FROM cloudron/base:5.0.0

RUN mkdir -p /app/code
WORKDIR /app/code

ARG COMMIT=2793236cb9cbe244dd5fca8095a156c8c562acad
RUN curl -L https://github.com/remotestorage/armadietto/archive/${COMMIT}.zip -o archive.zip && unzip -q archive.zip && mv "./armadietto-${COMMIT}/"* . && rm -r "./armadietto-${COMMIT}/" archive.zip

RUN npm ci --production

ADD . .

ENV PORT 8000
EXPOSE 8000

CMD [ "cloudron/start.sh" ]
