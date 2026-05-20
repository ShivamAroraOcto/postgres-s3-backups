ARG POSTGRES_VERSION=18

FROM postgres:${POSTGRES_VERSION}-alpine

RUN apk add --no-cache aws-cli

WORKDIR /scripts

COPY backup.sh .

RUN chmod +x backup.sh

ENTRYPOINT ["sh", "backup.sh"]
