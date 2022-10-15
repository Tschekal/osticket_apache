FROM alpine:latest
COPY entry.sh /scripts/entry.sh
COPY php.ini /etc/php8/php.ini
COPY httpd.conf /etc/apache2/httpd.conf
RUN apk add nano apache2 screen php8 php8-iconv php8-imap php8-apcu php8-intl php8-cgi php8-mbstring php8-gd php8-mysqli php8-bcmath php8-xml php8-dom php8-opcache php8-phar php8-session php8-apache2 curl wget unzip 
ENTRYPOINT ["/scripts/entry.sh"]
#CMD ["httpd", "-D", "FOREGROUND"]
