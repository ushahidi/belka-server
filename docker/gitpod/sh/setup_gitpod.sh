#!/bin/bash

set -ex

usermod -p ${RANDOM}${RANDOM}${RANDOM}${RANDOM}${RANDOM}${RANDOM} git

[ ! -d /home/git/bin ] && mkdir -m 0700 -p /home/git/bin
[ ! -d /home/git/.keys ] && mkdir -m 0700 -p /home/git/.keys
[ ! -d /home/git/.ssh ] && mkdir -m 0700 -p /home/git/.ssh

chown -R git:git /home/git/bin /home/git/.keys /home/git/.ssh

cp -arv /root/gitpod/* /home/git/bin/

if [ ! -f "/home/git/.keys/id_git.pub" ]; then
	ssh-keygen -b 1024 -t rsa -N '' -f /home/git/.keys/id_git
fi

cat /home/git/.keys/id_git.pub > /home/git/.ssh/authorized_keys
chown -R git:git /home/git/.keys /home/git/.ssh
chmod 0600 /home/git/.ssh/authorized_keys
