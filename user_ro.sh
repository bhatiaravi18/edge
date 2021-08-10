#!/bin/bash
file="/data/dba/scripts/edegver/f2.txt"
while IFS=: read -r f1 f2 f3 f4 f5
do
> /data/dba/scripts/edegver/test.sql
echo "begin;"   >> /data/dba/scripts/edegver/test.sql
echo "grant usage on schema tenopr,terep,terep_dirty,testg to \"$f3\";"   >> /data/dba/scripts/edegver/test.sql
echo "grant select on all tables in schema tenopr,terep,terep_dirty,testg to \"$f3\";"   >> /data/dba/scripts/edegver/test.sql
echo "alter default privileges in schema tenopr,terep,terep_dirty,testg grant select on tables to \"$f3\";"   >> /data/dba/scripts/edegver/test.sql
echo "GRANT ALL privileges ON ALL TABLES IN SCHEMA terep_cstm TO \"$f3\";"   >> /data/dba/scripts/edegver/test.sql
echo "GRANT CREATE ON SCHEMA terep_cstm TO \"$f3\";"   >> /data/dba/scripts/edegver/test.sql
echo "GRANT USAGE ON SCHEMA terep_cstm TO \"$f3\";"   >> /data/dba/scripts/edegver/test.sql
echo "GRANT SELECT ON ALL TABLES IN SCHEMA terep_cstm TO \"$f3\";"   >> /data/dba/scripts/edegver/test.sql
echo "ALTER DEFAULT PRIVILEGES IN SCHEMA terep_cstm grant all on tables to \"$f3\";"   >> /data/dba/scripts/edegver/test.sql
echo "commit;"   >> /data/dba/scripts/edegver/test.sql
cp /data/dba/scripts/edegver/test.sql /data/dba/scripts/edegver/teda_$f1.sql
echo "PGPASSWORD=Tr@deEdge181 /pgsql_location/psql -h hostip -U \"$f2\" -d \"$f1\" -p 8462 -f \"/file_location/teda_$f1.sql\" > \"/file_location/Out_$f1.txt\""   >> /data/dba/scripts/edegver/ro_sql.sh

done <"$file"
