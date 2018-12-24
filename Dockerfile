FROM docker.oa.com:8080/library/tlinux2.2-gaia-with-onion

RUN yum -y update \
    && yum -y install php \
    && rm -rf /tmp/* /var/tmp/* /data/tmp/*

COPY index.php /data/demo/

RUN ls /data/demo/ \
    && php --version

WORKDIR /data/demo

CMD ["php", "/data/demo/index.php"]