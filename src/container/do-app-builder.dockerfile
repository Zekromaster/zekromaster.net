FROM docker.io/klakegg/hugo:ext-asciidoctor as hugo

ARG HUGO_BASEURL
ARG HUGO_TITLE
ARG HUGO_AUTHOR_EMAIL
ARG HUGO_AUTHOR_NAME

ADD . /mnt/projectRoot
WORKDIR /mnt/projectRoot/src/hugo
RUN hugo -d ../../build/hugo
