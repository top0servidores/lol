FROM gitpod/workspace-full-vnc

USER gitpod

ARG DEBIAN_FRONTEND=noninteractive

#Install Google key
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
RUN sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Install custom tools, runtime, etc.
RUN sudo add-apt-repository -y ppa:neovim-ppa/unstable
RUN sudo apt-get update && \
    sudo apt-get install -y zsh neovim google-chrome-stable
