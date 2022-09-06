FROM nginx as production-stage
COPY default.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/nginx.conf
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]