FROM debian:stretch
MAINTAINER https://github.com/j0weiss

# Install hugo
RUN apt-get update
RUN apt-get install -y nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY public /var/www/html/

EXPOSE 8181

CMD ["nginx", "-g", "daemon off;"]