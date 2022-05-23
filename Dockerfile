#FROM scratch
FROM nginx:latest
#RUN  touch /var/run/nginx.pid && \
#     chown -R nginx:nginx /var/cache/nginx /var/run/nginx.pid
#USER nginx
#RUN chown -R nginx:nginx   /etc/nginx/conf.d/default.conf /usr/share/nginx/html
#ADD requirements.txt .
#RUN python -m pip install -r requirements.txt

#WORKDIR /app
#ADD . /app
#RUN yum install -y httpd
#ADD index.html /var/www/html/
#WORKDIR /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/
USER root
EXPOSE 8189
CMD ["nginx", "-g", "daemon off;"]
