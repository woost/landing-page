FROM nginx:1.13.9-alpine

expose 8080

copy ./nginx/default.conf /etc/nginx/conf.d/default.conf
copy ./index.html /public/
copy ./img /public/img
copy ./vendor /public/vendor
copy ./css /public/css
copy ./static /public/static
