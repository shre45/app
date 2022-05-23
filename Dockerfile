#FROM scratch
FROM httpd:latest
#USER nginx
#RUN  touch /var/run/nginx.pid && \
#     chown -R nginx:nginx /var/cache/nginx /var/run/nginx.pid
#RUN chown -R nginx:nginx   /etc/nginx/conf.d/default.conf /usr/share/nginx/html
#USER nginx
#RUN chown -R nginx:nginx   /etc/nginx/conf.d/default.conf /usr/share/nginx/html
#ADD requirements.txt .
#RUN python -m pip install -r requirements.txt

#WORKDIR /app
#ADD . /app
#RUN yum install -y httpd
#ADD index.html /var/www/html/
#WORKDIR /usr/share/nginx/html/
COPY index.html /var/www/html/
EXPOSE 8084
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
#CMD ["nginx", "-g", "daemon off;"]
