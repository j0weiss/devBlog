FROM debian:stretch
MAINTAINER https://github.com/j0weiss

# Install hugo
RUN apt-get update
RUN apt-get install -y nginx

COPY public /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]