begin;
grant usage on schema tenopr,terep,terep_dirty,testg to "kl_altipal_pgsql_stg";
grant select on all tables in schema tenopr,terep,terep_dirty,testg to "kl_altipal_pgsql_stg";
alter default privileges in schema tenopr,terep,terep_dirty,testg grant select on tables to "kl_altipal_pgsql_stg";
GRANT ALL privileges ON ALL TABLES IN SCHEMA terep_cstm TO "kl_altipal_pgsql_stg";
GRANT CREATE ON SCHEMA terep_cstm TO "kl_altipal_pgsql_stg";
GRANT USAGE ON SCHEMA terep_cstm TO "kl_altipal_pgsql_stg";
GRANT SELECT ON ALL TABLES IN SCHEMA terep_cstm TO "kl_altipal_pgsql_stg";
ALTER DEFAULT PRIVILEGES IN SCHEMA terep_cstm grant all on tables to "kl_altipal_pgsql_stg";
commit;
