# From the example: https://docs.docker.com/examples/apt-cacher-ng/
#                   and.. https://github.com/extellisys/docker-image-apt-cacher-ng/blob/master/Dockerfile

FROM        debian:jessie
MAINTAINER  David Losada <davidlosada@ushahidi.com>

VOLUME      ["/var/cache/apt-cacher-ng"]
RUN         echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN         apt-get update && \
                apt-get install -y apt-utils && \
                apt-get install -y apt-cacher-ng && \
                rm -fr /var/lib/apt/lists/* /var/cache/apt/archives/*

COPY        files/backends_ubuntu /var/lib/apt-cacher-ng/backends_ubuntu.default

EXPOSE      3142
CMD         chmod -R 777 /var/cache/apt-cacher-ng && /usr/sbin/apt-cacher-ng ForeGround=1 CacheDir=/var/cache/apt-cacher-ng
