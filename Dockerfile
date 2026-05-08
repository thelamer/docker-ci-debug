FROM ghcr.io/linuxserver/baseimage-alpine:3.23

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="thelamer"

RUN \
  echo "**** test install ****" && \
  apk add --no-cache \
    vim && \
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/*
