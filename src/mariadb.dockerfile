FROM mariadb:10.3.8-jessie

LABEL maintainer="John Lincoln <jlincoln88@gmail.com>"

COPY _my.cnf /etc/mysql/conf.d/my.cnf

CMD ["mysqld"]

EXPOSE 3306
