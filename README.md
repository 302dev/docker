# 302 Dev Docker images

[![CircleCI](https://circleci.com/gh/302dev/docker/tree/master.svg?style=svg)](https://circleci.com/gh/302dev/docker/tree/master)

I based these on phpdocker.io Dockerfiles.

I use citlab-ci, and i wrote/use these [Docker](https://hub.docker.com/) images so my ci pipelines will build faster, and with less settings in my .gitlab-ci.yml.

## Currently supported.

| Image Name | OS | PHP |
| ---------- | -- | --- |
| 302dev/bionic:php7.2-cli | Ubuntu 18.04 | 7.2 |
| 302dev/bionic:php7.3-cli | Ubuntu 18.04 | 7.3 |
| 302dev/centos7:php7.2-cli | CentOS 7 | 7.2 |
| 302dev/centos7:php7.3-cli | CentOS 7 | 7.3 |
