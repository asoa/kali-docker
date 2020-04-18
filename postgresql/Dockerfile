FROM postgres

#COPY init.sql /docker-entrypoint-initdb.d/

ARG POSTGRES_PASSWORD
ENV POSTGRES_PASSWORD $POSTGRES_PASSWORD

ARG POSTGRES_CONFIG
ENV POSTGRES_CONFIG $POSTGRES_CONFIG

WORKDIR /docker-entrypoint-initdb.d
RUN /bin/touch init.sql && /bin/echo "$POSTGRES_CONFIG" > /docker-entrypoint-initdb.d/init.sql
