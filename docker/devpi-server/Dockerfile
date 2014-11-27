FROM        debian:jessie
MAINTAINER  David Losada <davidlosada@ushahidi.com>

VOLUME      ["/mnt/devpi"]
RUN         echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN         apt-get update && \
                apt-get install -y apt-utils && \
                apt-get install -y python-pip python-dev && \
                rm -fr /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN			pip install -U devpi-server==2.1.3 devpi-web==2.2.2
RUN			mkdir -p /mnt/devpi

EXPOSE		4040
CMD			devpi-server --host 0.0.0.0 --port 4040 --serverdir /mnt/devpi --start && tail -f /mnt/devpi/.xproc/devpi-server/xprocess.log
