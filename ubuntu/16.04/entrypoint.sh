#!/usr/bin/env bash

mkdir /var/run/sshd
rm -v /etc/ssh/ssh_host_*
dpkg-reconfigure openssh-server
if ! [ -z "${http_proxy}" ]; then
    cat >> /etc/apt/apt.conf.d/90proxy << EOF
Acquire::http::proxy "${http_proxy}";
EOF
fi
if ! [ -z "${https_proxy}" ]; then
    cat >> /etc/apt/apt.conf.d/90proxy << EOF
Acquire::https::proxy "${http_proxy}";
EOF
fi
exec /usr/sbin/sshd -D
