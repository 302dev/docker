############################
# 302dev/bionic:php7.2-cli #
############################

FROM ubuntu:xenial

FROM php:7.2-cli

# Fixes some weird terminal issues such as broken clear / CTRL+L
ENV TERM=linux

ENV DEBIAN_FRONTEND noninteractive

# smoke test
RUN php --version

CMD ["php", "-a"]
