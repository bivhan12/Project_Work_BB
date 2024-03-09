FROM node:latest
MAINTAINER bivhan

RUN apt update && \
    apt add --no-cache apache2-utils apache2 unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/carvilla-free-website-template.zip /tmp/

WORKDIR /var/www/html/

RUN unzip /tmp/carvilla-free-website-template.zip -d /tmp/ && \
    cp -rvf /tmp/photogenic/* . && \
    rm -rf /tmp/photogenic /tmp/carvilla-free-website-template.zip

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

