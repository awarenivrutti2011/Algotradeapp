FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/*
COPY site/site/site/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
