# syntax=docker/dockerfile:1
FROM dfuse/dfuse-eosio:latest

ARG USER_ID
ARG GROUP_ID

RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user

RUN curl -L https://github.com/dfuse-io/dfuse-eosio/releases/download/v0.9.0-beta10/dfuse-eosio_0.9.0-beta10_linux_x86_64.tar.gz --output dfuse-eosio_0.9.0-beta10_linux_x86_64.tar.gz && tar -xf dfuse-eosio_0.9.0-beta10_linux_x86_64.tar.gz -C /usr/bin

RUN mkdir /data && chown user /data

USER user

WORKDIR /data

CMD ["dfuseeos", "start"]

