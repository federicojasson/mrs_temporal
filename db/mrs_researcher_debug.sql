
START TRANSACTION; -- Executes all statements or rollbacks

USE mrs_db;

SELECT id, HEX(password) as password, HEX(salt) as salt
FROM users_researchers_authentication;

COMMIT;
