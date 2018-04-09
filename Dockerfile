FROM php:5-apache

MAINTAINER liuzheng <liuzheng712@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install unzip && apt-get clean all && \
curl -o /icecoder.zip 'https://icecoder.net/download-zip?version=6.0' && \
unzip -q /icecoder.zip -d /tmp/ && \
cp -r /tmp/ICE* /var/www/html/icecoder && \
chown -R www-data.www-data /var/www/html/icecoder && \
rm -rf /icecoder.zip /tmp/ICE*

