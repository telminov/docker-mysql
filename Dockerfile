FROM ubuntu:14.04
MAINTAINER telminov@soft-way.biz

EXPOSE 3306
VOLUME /var/lib/mysql/

# install package
RUN apt-get -qq update
RUN apt-get install mysql-server -y


# Add MySQL configuration
ADD my.cnf /etc/mysql/my.cnf

CMD test "$(ls -A /var/lib/mysql/)" || mysql_install_db; chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; mysqld_safe