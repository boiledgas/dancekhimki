FROM busybox
COPY sql.tar /backup/sql.tar
COPY www.tar /backup/www.tar
ADD entrypoint.sh /
RUN chmod 777 /entrypoint.sh
RUN chmod -R 777 /backup
VOLUME ["/var/www", "/var/lib/mysql"]
ENTRYPOINT exec ./entrypoint.sh
