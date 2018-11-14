FROM gitea/gitea

WORKDIR /data

ENV UID_GIT=-1
ENV GID_GIT=-1

RUN apk add --no-cache shadow

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
