-- execute immediate from 'steps/01_setup_snowflake.sql' using (environment => '{{environment}}');
execute immediate from '@"QUICKSTART_COMMON"."PUBLIC"."QUICKSTART_REPO"/branches/dev/steps/01_setup_snowflake.sql' using (environment => '{{environment}}');

execute immediate from 'steps/03_harmonize_data.sql' using (environment => '{{environment}}');
execute immediate from 'steps/04_orchestrate_jobs.sql' using (environment => '{{environment}}', retention_time => {{retention_time}});
