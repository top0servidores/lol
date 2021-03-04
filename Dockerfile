FROM gitpod/workspace-full-vnc

USER root

ARG DEBIAN_FRONTEND=noninteractive

#Install Google key
RUN wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
RUN add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"

# Install custom tools, runtime, etc.
RUN apt install -y opera-stable

USER gitpod
