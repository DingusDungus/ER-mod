DROP DATABASE IF EXISTS eshop;

CREATE DATABASE eshop;





-- MariaDB
/* DROP USER IF EXISTS 'user'@'localhost';

CREATE USER IF NOT EXISTS 'user'@'localhost'
	IDENTIFIED BY 'pass'
;

-- Ge användaren alla rättigheter på alla eshop.
GRANT ALL PRIVILEGES
    ON eshop.*
    TO 'user'@'localhost'
    WITH GRANT OPTION
; */

-- MYSQL
/* DROP USER IF EXISTS 'user'@'%';


CREATE USER IF NOT EXISTS 'user'@'%' -- % = godtycklig host.
IDENTIFIED
WITH mysql_native_password -- Only MySQL > 8.0.4 bakåtkompatibelt.
BY 'pass'
;

-- Ge användaren alla rättigheter på alla databaser.
GRANT ALL PRIVILEGES
    ON eshop.*
    TO 'user'@'%'
; */

SHOW GRANTS FOR 'user'@'%';