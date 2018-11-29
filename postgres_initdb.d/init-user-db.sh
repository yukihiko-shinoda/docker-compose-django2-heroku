#!/bin/bash -eu

psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "service" <<-EOSQL
    CREATE USER app WITH PASSWORD '${POSTGRES_USER_PASSWORD}';
    GRANT ALL PRIVILEGES ON DATABASE service TO app;
EOSQL