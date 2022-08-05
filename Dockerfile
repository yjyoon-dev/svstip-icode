FROM nginx

RUN mkdir /app
WORKDIR /app

RUN mkdir ./build
ADD ./build/web ./build

RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf.d

EXPOSE 8000

CMD ["nginx", "-g", "daemon off;"]