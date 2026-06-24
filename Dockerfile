FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    unzip \
    wget \
    gzip \
    tar \
    build-essential \
    python3 \
    python3-pip \
    nodejs \
    npm \
    ripgrep \
    fd-find \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN curl -LO https://github.com/tree-sitter/tree-sitter/releases/download/v0.26.9/tree-sitter-cli-linux-x64.zip \
    && unzip tree-sitter-cli-linux-x64.zip -d /usr/local/bin/ \
    && rm tree-sitter-cli-linux-x64.zip \
    && chmod +x /usr/local/bin/tree-sitter

RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz \
    && tar -C /opt -xzf nvim-linux-x86_64.tar.gz \
    && rm nvim-linux-x86_64.tar.gz \
    && ln -s /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim

RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 /root/.local/share/nvim/site/pack/packer/start/packer.nvim

ENV HOME=/root

RUN mkdir -p $HOME/.config \
 && git clone https://github.com/vcadillog/nvim-cfg $HOME/.config/nvim

RUN nvim --headless /root/.config/nvim/lua/victor/packer.lua -c "source %" -c "lua require('packer').sync()" -c "autocmd User PackerComplete wq"

ENV TERM=xterm-256color

CMD ["nvim"]
