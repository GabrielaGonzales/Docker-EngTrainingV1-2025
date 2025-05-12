#!/bin/sh

: "${API_BASE:=http://10.26.32.19:5000/info}"

envsubst '$API_BASE' < /usr/share/nginx/html/config.template.js > /usr/share/nginx/html/config.js

nginx -g 'daemon off;'