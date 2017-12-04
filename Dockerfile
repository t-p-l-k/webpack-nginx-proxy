FROM nginx

RUN rm -f /etc/nginx/conf.d/*

EXPOSE 80
EXPOSE 443

COPY entrypoint.sh /entrypoint.sh
RUN find /
ENTRYPOINT  ["/entrypoint.sh"]
