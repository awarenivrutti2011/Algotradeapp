FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/index.htm
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
