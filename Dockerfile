FROM postgres:15.1-bullseye as db
WORKDIR /app
# COPY ./scripts/db/init.sh /docker-entrypoint-initdb.d

# next line is copying scripts to the place where the image executes them during startup
# (Warning: scripts in /docker-entrypoint-initdb.d are only run if you start the container with a data directory that is empty)
# These initialization files will be executed in sorted name order as defined by the current locale, which defaults to en_US.utf8.
COPY ./scripts/db/* /docker-entrypoint-initdb.d/
COPY ./scripts/csv/* /docker-entrypoint-initdb.d/
