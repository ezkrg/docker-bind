FROM alpine:3.7

RUN apk add --update --no-cache bind \
 && rm -rf /var/cache/apk/*

CMD [ "/usr/sbin/named", "-f", "-c", "/etc/bind/named.conf", "-u", "named" ]