FROM node:latest


RUN mkdir /var/www \
    && cd /var/www \
    && npm install --global rimraf \
    && npm install --global bower typings webpack webpack-dev-server typescript


RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y libnet-ssleay-perl \
    && apt-get install -y libio-socket-ssl-perl \
    && apt-get install -y sendemail

WORKDIR /var/www
