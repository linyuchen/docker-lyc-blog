FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive
COPY ./sources.list /etc/apt/
COPY ./pip.conf /root/.pip/
RUN apt-get update && apt-get install -y vim locales nginx php7.2 php7.2-fpm php7.2-mysql mysql-server && \
ln -s /opt/config/nginx/lyc-blog /etc/nginx/sites-enabled/lyc-blog && \
sed -i "s/^datadir.\+/datadir        = \/opt\/mysql-data/g" /etc/mysql/mysql.conf.d/mysqld.cnf && \
echo 'LANG=en_US.UTF-8' >> /etc/default/locale && \
echo 'LANGUAGE=en_US:en' >> /etc/default/locale && \
echo 'LC_COLLATE=en_US.UTF-8' >> /etc/default/locale && \
locale-gen en_US.UTF-8

ENTRYPOINT ["/bin/bash", "-c", "chmod u+x /opt/start-service.sh && /opt/start-service.sh  & bash"]
#CMD /bin/bash
