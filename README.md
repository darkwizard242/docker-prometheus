# docker-prometheus

[![](https://github.com/darkwizard242/docker-prometheus/workflows/docker-automated-build/badge.svg)](https://github.com/darkwizard242/docker-prometheus/actions) ![Docker Pulls](https://img.shields.io/docker/pulls/darkwizard242/prometheus?color=yellow) ![GitHub](https://img.shields.io/github/license/darkwizard242/docker-prometheus)

Docker images that contain a running instance of [Prometheus](https://prometheus.io/) ready to be used upon pull/run. These docker images have been built using `alpine:latest` as the base image to keep the produced images as compact as possible. :relaxed:

## Supported tags:

Currently, following (generally the most recent) six versions of `Prometheus` are available as docker images:

- **2.19.0**
- **2.18.2**
- **2.18.1**
- **2.18.0**
- **2.17.2**
- **2.17.1**

Feel free to review [Dockerfile](https://github.com/darkwizard242/docker-prometheus/blob/master/Dockerfile) if you like.

## How to use:

Simply, pull/run the docker image using whichever tag you prefer directly (examples below are mapping host's port `80` to Prometheus container's `9090` port - You can obviously choose to map to a different host port or none at all). The switch `-d` is being used to run the containers in detached form.

### 1\. Prometheus version 2.19.0:

```shell
docker run -dp 80:9090 --name=prometheus darkwizard242/prometheus:2.19.0
```

### 2\. Prometheus version 2.18.2:

```shell
docker run -dp 80:9090 --name=prometheus darkwizard242/prometheus:2.18.2
```

### 3\. Prometheus version 2.18.1:

```shell
docker run -dp 80:9090 --name=prometheus darkwizard242/prometheus:2.18.1
```

### 4\. Prometheus version 2.18.0:

```shell
docker run -dp 80:9090 --name=prometheus darkwizard242/prometheus:2.18.0
```

### 5\. Prometheus version 2.17.2:

```shell
docker run -dp 80:9090 --name=prometheus darkwizard242/prometheus:2.17.2
```

### 6\. Prometheus version 2.17.1:

```shell
docker run -dp 80:9090 --name=prometheus darkwizard242/prometheus:2.17.1
```

## Author:

Created by [Ali Muhammad](https://www.linkedin.com/in/ali-muhammad-759791130/), a DevOps/CloudOps Engineer who loves to learn and contribute to Open Source community.
