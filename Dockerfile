FROM node:12.12.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ARG port=8080
ARG DOMAIN=127.0.0.1
ENV DOMAIN=$default_domain PORT=$default_port

COPY package.json /usr/src/app/package.json
RUN npm install && npm cache clean --force
COPY . /usr/src/app

CMD npm start

EXPOSE 8080
