DROP DATABASE IF EXISTS eshop;
DROP USER IF EXISTS 'user'@'localhost';

CREATE DATABASE eshop;

CREATE USER IF NOT EXISTS 'user'@'localhost'
	IDENTIFIED BY 'pass'
;

GRANT ALL PRIVILEGES
    ON eshop.*
    TO 'user'@'localhost'
    WITH GRANT OPTION
;
