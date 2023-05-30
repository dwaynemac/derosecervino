FROM nginx:alpine
COPY build /usr/share/nginx/html
COPY config/nginx/redirects.conf /etc/nginx/conf.d/
CMD ["echo 'include /etc/nginx/conf.d/redirects.conf;' > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
