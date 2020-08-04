FROM REHL:7

RUN yum update -y
RUN yum install httpd -y

COPY index.html /var/www/html/index.html

ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
