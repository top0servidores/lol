FROM gitpod/workspace-full-vnc

USER gitpod

ARG DEBIAN_FRONTEND=noninteractive

# Install Chromium
RUN sudo apt-get update -q \
 && sudo apt-get install -yq \
   chromium-browser \
 && sudo rm -rf /var/lib/apt/lists/*
