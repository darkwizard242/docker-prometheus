FROM alpine:latest
MAINTAINER darkwizard242 <am900820@gmail.com>

# Install required dependencies
RUN apk update \
    && apk upgrade \
    && apk add --no-cache wget tar

# Set Prometheus Version
ARG version=2.14.0

# Download, install and setup Prometheus
RUN mkdir -p mkdir -p /etc/prometheus /var/lib/prometheus \
    && wget -v -O /tmp/prometheus.tar.gz \
    https://github.com/prometheus/prometheus/releases/download/v${version}/prometheus-${version}.linux-amd64.tar.gz &> /dev/null \
    && cd /tmp \
    && tar -zxf /tmp/prometheus.tar.gz --strip-components=1 \
    && rm /tmp/prometheus.yml /tmp/prometheus.tar.gz && mv prom* /usr/local/bin/ \
    && mv console* /etc/prometheus/ \
    && rm -rf /tmp/ \
    && chown -R nobody:nogroup /etc/prometheus /var/lib/prometheus


# Container Configurations
USER nobody
EXPOSE 9090
VOLUME [ "/var/lib/prometheus" ]
WORKDIR /var/lib/prometheus
COPY prometheus.yml /etc/prometheus/

# Container Intialization Entrypoint & CMD.
ENTRYPOINT [ "/usr/local/bin/prometheus" ]
CMD        [ "--config.file=/etc/prometheus/prometheus.yml", \
             "--storage.tsdb.path=/var/lib/prometheus", \
             "--web.console.libraries=/etc/prometheus/console_libraries", \
             "--web.console.templates=/etc/prometheus/consoles", \
             "--web.listen-address=0.0.0.0:9090", \
             "--storage.tsdb.retention.time=30d" ]
