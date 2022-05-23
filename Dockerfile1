FROM nginx:1.17
# Angular
# ENV JSFOLDER=/opt/app/*.js
# React
# ENV JSFOLDER=/opt/app/static/js/*.js
# VueJS 
# ENV JSFOLDER=/opt/app/js/*.js
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /opt/app && chown -R nginx:nginx /opt/app && chmod -R 775 /opt/app
RUN chown -R nginx:nginx /var/cache/nginx && \
   chown -R nginx:nginx /var/log/nginx && \
   chown -R nginx:nginx /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
   chown -R nginx:nginx /var/run/nginx.pid  
RUN chgrp -R root /var/cache/nginx /var/run /var/log/nginx /var/run/nginx.pid && \
   chmod -R 775 /var/cache/nginx /var/run /var/log/nginx /var/run/nginx.pid
COPY ./start-nginx.sh /usr/bin/start-nginx.sh
RUN chmod +x /usr/bin/start-nginx.sh

EXPOSE 8080

WORKDIR /opt/app
# Angular
# COPY --from=0 --chown=nginx /app/dist/<projectName> .
# React
# COPY --from=0 --chown=nginx /app/build .
# VueJS
# COPY --from=0 --chown=nginx /app/dist .
COPY index.html .
RUN chmod -R a+rw /opt/app
USER nginx
ENTRYPOINT [ "start-nginx.sh" ]
#CMD ["nginx", "-g", "daemon off;"]
