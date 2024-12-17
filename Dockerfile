FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine321

ARG BUILD_DATE
ARG VERSION
LABEL build_version="Metatrader4 Docker:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="https://github.com/angsanch"

#install wine and dependencies
RUN apk update && \
	apk add wine && \
	rm -rf /apk /tmp/* /var/cache/apk/*

# remove sudo
RUN apk del sudo

# add local files
COPY /start /start
RUN chmod +x /start/start.sh
COPY /root /

# ports and volumes
EXPOSE 3000
VOLUME /config
