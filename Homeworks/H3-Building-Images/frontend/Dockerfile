FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY config.template.js /usr/share/nginx/html/config.template.js

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
EXPOSE 80

ENTRYPOINT [ "/docker-entrypoint.sh" ]
