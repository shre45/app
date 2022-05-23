FROM nginx:latest
#RUN  touch /var/run/nginx.pid && \
#     chown -R nginx:nginx /var/cache/nginx /var/run/nginx.pid
#USER nginx
#RUN chown -R nginx:nginx   /etc/nginx/conf.d/default.conf /usr/share/nginx/html
#ADD requirements.txt .
#RUN python -m pip install -r requirements.txt

#WORKDIR /app
#ADD . /app

ADD index.html .
WORKDIR /usr/share/nginx/html/
ADD . /usr/share/nginx/html/
USER 1001
EXPOSE 8185
