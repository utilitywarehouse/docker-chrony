FROM alpine:3.7

RUN apk --no-cache add --repository https://dl-3.alpinelinux.org/alpine/edge/main "chrony=3.2-r2"
CMD chronyd -x -u root -d
ADD chrony.conf /etc/chrony/chrony.conf
