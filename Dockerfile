#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

# To fully customize the contents of this image, use the following Dockerfile instead:
# https://github.com/microsoft/vscode-dev-containers/tree/v0.117.1/containers/ubuntu-18.04-git/.devcontainer/Dockerfile
FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update \
 && apt install -y --no-install-recommends \
      cmake ninja-build clang clang-format clangd clang-tidy lldb lld tig vim tmux git \
      python3-distutils \
      ripgrep fd-find \
      net-tools curl wget rsync \
      htop ca-certificates sudo less unzip \
 && cd \
 && git clone https://github.com/plotfi/dotfiles.git \
ENV DEBIAN_FRONTEND=dialog

