FROM centos: latest
MAINTAINER rshruti1993@gmail.com
RUN yum install -y httpd\
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/dpot.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip dpot.zip
RUN cp -rvf dpot/* .
RUN rm -rf dpot dpot.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
© 2021 GitHub, Inc.
