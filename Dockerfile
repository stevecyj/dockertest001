FROM alpine:3.19.0
ENV myworkdir /var/www/localhost/htdocs
RUN apk --update add apache2
RUN rm -rf /var/cache/apk/*
RUN cd ${myworkdir} \
    && echo "<h3>Round 01</h3>" >> index.html
RUN cd ${myworkdir} \
    && echo "<h3>Round 02</h3>" >> index.html
RUN cd ${myworkdir} \
    && echo "<h3>Round 03</h3>" >> index.html
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
