
USE mrs_db

SELECT id, HEX(password_hash) AS password_hash, HEX(salt) AS salt
FROM users_researchers_authentication_data;
