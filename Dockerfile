FROM nginx:alpine
COPY build /usr/share/nginx/html
COPY config/nginx/redirects.conf /etc/nginx/conf.d/
