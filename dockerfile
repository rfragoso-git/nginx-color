FROM nginx

RUN apt-get update --yes && apt-get install curl vim iputils-ping --yes

COPY index-nginx-color.html /usr/share/nginx/html/index.html