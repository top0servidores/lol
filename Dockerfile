FROM gitpod/workspace-full-vnc

# Install dependencies
RUN sudo apt-get update \
    && sudo apt-get install -y libgtk-3-dev \
    && sudo rm -rf /var/lib/apt/lists/*
