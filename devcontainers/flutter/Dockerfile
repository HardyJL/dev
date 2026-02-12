FROM ghcr.io/cirruslabs/flutter:stable

# Install Neovim Nightly
USER root
RUN apt-get update && apt-get install -y curl git \
    && curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.tar.gz \
    && rm -rf /opt/nvim \
    && tar -C /opt -xzf nvim-linux-x86_64.tar.gz \
    && ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim \
    && rm nvim-linux-x86_64.tar.gz
USER flutter
