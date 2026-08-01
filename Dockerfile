FROM nginx:alpine

COPY nginx.conf.template /etc/nginx/conf.d/default.conf.template
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY index.html style.css script.js /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets/

EXPOSE 80

CMD ["/entrypoint.sh"]
