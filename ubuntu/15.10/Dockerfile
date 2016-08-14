FROM ubuntu:15.10
RUN apt update && apt dist-upgrade -y && apt -y install openssh-server python git apt-utils sudo
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
