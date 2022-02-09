FROM debian:bullseye

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt install -y --no-install-recommends \
  git \
  g++ \
  make \
  ca-certificates \
  libssl-dev \
  libgmp-dev \
  libmpfr-dev \
  libgsl-dev \

  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/auton1/LDhat.git LDhat \
    && cd LDhat && make && make clean && cd ..

RUN git clone https://github.com/auton1/LDhot.git LDhot \
    && cd LDhot && make MULTI=1 && make clean && cd ..

WORKDIR /mnt
