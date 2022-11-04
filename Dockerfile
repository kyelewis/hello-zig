FROM ubuntu:latest
ARG version=zig-linux-x86_64-0.11.0-dev.38+b40fc7018

RUN apt-get update && apt-get install --yes curl xz-utils build-essential 

RUN mkdir /zig
WORKDIR /zig
RUN curl --remote-name "https://ziglang.org/builds/${version}.tar.xz" 
RUN tar xf ${version}.tar.xz
RUN rm ${version}.tar.xz
ENV PATH="$PATH:/zig/${version}"

RUN mkdir /app
WORKDIR /app

RUN apt-get install --yes neovim
