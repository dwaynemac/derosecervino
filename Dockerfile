FROM nginx:alpine
COPY config/nginx/nginx.conf /etc/nginx
COPY config/nginx/mime.types /etc/nginx
COPY config/nginx/redirects.conf /usr/share/nginx/conf/redirects.conf

COPY build /usr/share/nginx/html
