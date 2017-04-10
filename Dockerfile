FROM haproxy:1.7-alpine
MAINTAINER Tecnativa <info@tecnativa.com>

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
EXPOSE 80
ENV FORCEHOST="" \
    FORWARDFOR=1 \
    LONGPOLLING=odoo:8072 \
    ODOO=odoo:8069

# Metadata
ARG VCS_REF
ARG BUILD_DATE
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.vendor=Tecnativa \
      org.label-schema.license=Apache-2.0 \
      org.label-schema.build-date="$BUILD_DATE" \
      org.label-schema.vcs-ref="$VCS_REF" \
      org.label-schema.vcs-url="https://github.com/Tecnativa/docker-tcp-proxy"
