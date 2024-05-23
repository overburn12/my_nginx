FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
COPY 404_throttle.conf /etc/nginx/common/404_throttle.conf

RUN rm /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]