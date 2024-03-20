FROM alpine:3.19.0
ENV myworkdir /var/www/localhost/htdocs
WORKDIR ${myworkdir}
RUN apk --update add apache2
RUN rm -rf /var/cache/apk/*
RUN echo "<h3>Round 01</h3>" >> index.html
RUN echo "<h3>Round 02</h3>" >> index.html
RUN echo "<h3>Round 03</h3>" >> index.html
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
