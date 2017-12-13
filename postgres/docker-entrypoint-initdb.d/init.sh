#!/bin/bash
set -e

[ -z "$DBUSER_USER"] && echo "DBUSER_USER is not defined, defaulting to 'john'" && DBUSER_USER=john
[ -z "$DBUSER_PASS"] && echo "DBUSER_PASS is not defined, defaulting to 'doe'" && DBUSER_PASS=doe
[ -z "$DBUSER_DB"] && echo "DBUSER_DB is not defined, defaulting to 'sample'" && DBUSER_DB=sample

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER "$DBUSER_USER";
    ALTER USER "$DBUSER_USER" WITH PASSWORD '$DBUSER_PASS';
    CREATE DATABASE "$DBUSER_DB";    
    GRANT ALL PRIVILEGES ON DATABASE "$DBUSER_DB" TO "$DBUSER_USER";
EOSQL