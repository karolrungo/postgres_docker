#!/bin/bash

export $(cat .env | xargs)
psql -h ${PGHOST} -p ${PGPORT} -U ${PGUSER} -d postgres -f sql/create_database.sql
psql -h ${PGHOST} -p ${PGPORT} -U ${PGUSER} -d ${PGDATABASE} -f sql/create_tables.sql
psql -h ${PGHOST} -p ${PGPORT} -U ${PGUSER} -d ${PGDATABASE} -f sql/insert_data.sql
