FROM alpine:3.19.0
ENV myworkdir /var/www/localhost/htdocs
ARG whoami=JOJO
WORKDIR ${myworkdir}
RUN apk --update add apache2
RUN rm -rf /var/cache/apk/*
RUN echo "<h3>I am ${whoami}</h3>" >> index.html
RUN echo "<h3>I am ${whoami}</h3>" >> index.html
RUN echo "<h3>I am ${whoami}</h3>" >> index.html
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
