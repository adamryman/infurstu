FROM alpine:3.6

ENTRYPOINT ["/oklog"]

EXPOSE 7659 7651 7653 7650 7652

RUN mkdir /data

ADD https://github.com/oklog/oklog/releases/download/v0.2.2/oklog-0.2.2-linux-amd64 /oklog
RUN ["chmod", "775", "/oklog"]

LABEL vendor=https://github.com/oklog/oklog \
	oklog.version=0.2.2 \
oklog.release-date=2017-07-29
