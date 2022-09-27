FROM nginx as production-stage
COPY default.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/nginx.conf
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


# FROM nginx:1.23.1

# COPY default.heroku.conf /etc/nginx/conf.d/default.conf.template
# COPY nginx.heroku.conf /etc/nginx/nginx.conf
# COPY . /usr/share/nginx/html

# CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'