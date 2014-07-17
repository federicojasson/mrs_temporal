
START TRANSACTION; -- Executes all statements or rollbacks

SET NAMES 'utf8';
SET CHARACTER SET utf8;

USE mrs_db

SELECT id, HEX(password) AS password, HEX(salt) AS salt
FROM users_researchers_authentication;

COMMIT;
