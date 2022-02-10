# Utils image which contains jq and curl.
FROM registry.access.redhat.com/ubi8-minimal:latest

ADD https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 /usr/local/bin/jq
RUN chmod +x /usr/local/bin/jq

COPY etcdStatus.sh /usr/bin

ENTRYPOINT ["etcdStatus.sh"]
CMD [ ]