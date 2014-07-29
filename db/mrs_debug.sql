
START TRANSACTION; -- Executes all statements or rollbacks

source mrs_schema.sql;
source mrs_default_data.sql;
source mrs_debug_admin.sql;
-- source mrs_debug_doctor.sql;
-- source mrs_debug_big_data.sql;
source mrs_debug_small_data.sql;
source mrs_debug_researcher.sql;

COMMIT; -- Commits the transaction
