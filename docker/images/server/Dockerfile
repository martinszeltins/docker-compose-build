FROM alpine:3.23.3

RUN apk add --no-cache nginx && \
    mkdir -p /run/nginx /var/www/html

RUN echo 'Hello from index2.html' > /var/www/html/index2.html

RUN printf '%s\n' \
    'server {' \
    '    listen 80;' \
    '    root /var/www/html;' \
    '    index index.html;' \
    '    location / {' \
    '        try_files $uri $uri/ =404;' \
    '    }' \
    '}' > /etc/nginx/http.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
