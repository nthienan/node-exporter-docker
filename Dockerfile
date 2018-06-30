FROM prom/node-exporter:v0.16.0

ENV NODE_ID=none

USER root

COPY docker-entrypoint.sh /etc/node-exporter/

ENTRYPOINT  [ "/etc/node-exporter/docker-entrypoint.sh" ]
CMD [ "/bin/node_exporter" ]
