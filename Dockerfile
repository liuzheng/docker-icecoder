FROM php:5-alpine

MAINTAINER liuzheng <liuzheng712@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN curl -o /icecoder.zip 'https://icecoder.net/download-zip?version=6.0' && \
unzip -q /icecoder.zip -d /tmp/ && \
mkdir -p /var/www/html/ && \
cp -r /tmp/ICE* /var/www/html/icecoder && \
chown -R www-data.www-data /var/www/html/icecoder && \
rm -rf /icecoder.zip /tmp/ICE*

