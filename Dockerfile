FROM gitea/gitea

WORKDIR /data

ENV GIT_USER_ID=-1
ENV GIT_GROUP_ID=-1

RUN apk add --no-cache shadow

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
