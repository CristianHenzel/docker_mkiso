FROM	debian:latest

ENV	DEBIAN_FRONTEND "noninteractive"

RUN	apt-get update && \
	apt-get install -y --no-install-recommends \
		cpio \
		rsync \
		wget \
		xorriso && \
	mkdir /data

COPY	./app /var/app

ENTRYPOINT ["/var/app/mkiso.sh"]