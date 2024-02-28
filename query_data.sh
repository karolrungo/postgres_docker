
#!/bin/bash

export $(cat .env | xargs)
psql -h ${PGHOST} -p ${PGPORT} -U ${PGUSER} -d ${PGDATABASE} -f sql/query_data.sql
