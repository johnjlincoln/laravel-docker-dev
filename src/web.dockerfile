FROM nginx:1.15

LABEL maintainer="John Lincoln <jlincoln88@gmail.com>"

ADD _vhost.conf /etc/nginx/conf.d/default.conf
