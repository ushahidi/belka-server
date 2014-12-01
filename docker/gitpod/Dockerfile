FROM        debian:jessie
MAINTAINER  David Losada <davidlosada@ushahidi.com>

VOLUME      ["/home/git"]
RUN         echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN         apt-get update && \
                apt-get install -y apt-utils && \
                apt-get install -y git openssh-server && \
                rm -fr /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN         useradd -d /home/git -s /home/git/bin/gitpod git

RUN         sed -ri -e 's/UsePAM yes/#UsePAM yes/g' -e 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config
RUN         mkdir /var/run/sshd

COPY        src/gitpod /root/gitpod/gitpod
COPY        src/git-daemon /root/gitpod/git-daemon
COPY        src/git-upload-pack /root/gitpod/git-upload-pack
COPY        src/lazy /root/gitpod/lazy
COPY        sh/setup_gitpod.sh /root/

EXPOSE      2200
CMD         /root/setup_gitpod.sh && /usr/sbin/sshd -D -p 2200
