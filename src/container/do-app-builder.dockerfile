FROM docker.io/klakegg/hugo:ext-asciidoctor as hugo

WORKDIR /mnt/projectRoot
ADD . ./
RUN ( cd src/hugo ; hugo -d ../../build/hugo )