# create new
FROM ubuntu

# LABEL about the custom image
LABEL maintainer="Egbea@hotmail.com"
LABEL version="0.1"

RUN apt-get update
RUN apt-get -y install nginx

RUN echo "Dockerfile Test on Nginx" > /var/www/html/index.html

EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

