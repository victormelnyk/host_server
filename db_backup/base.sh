#!/usr/bin/env bash
"/Users/victor/Programs/pgsql/bin/pg_dump" \
  --host=localhost \
  --port=2012 \
  --username=b_admin \
  --password \
  --dbname=base \
  --format=p \
  --encoding=UTF8 \
  --schema-only \
  --file="/Users/victor/Source/host_server/db/base.sql"
