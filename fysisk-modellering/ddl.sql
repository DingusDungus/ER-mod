USE eshop;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS bilder;
DROP TABLE IF EXISTS kategorier;
DROP TABLE IF EXISTS lager;
DROP TABLE IF EXISTS logg;
DROP TABLE IF EXISTS produkter;
DROP TABLE IF EXISTS kundregister;

CREATE TABLE kundregister (
    kundID INT AUTO_INCREMENT NOT NULL,
    fornamn VARCHAR(20),
    efternamn VARCHAR(20),
    telefonnummer INT,
    epostaddress VARCHAR(40),

    PRIMARY KEY (kundID)
)
ENGINE INNODB
CHARSET utf8
COLLATE utf8_swedish_ci
;

CREATE TABLE produkter (
    produktID INT AUTO_INCREMENT NOT NULL,
    namn VARCHAR(20),
    beskrivning VARCHAR(150),
    pris INT NOT NULL DEFAULT 0,

    PRIMARY KEY (produktID)
)
ENGINE INNODB
CHARSET utf8
COLLATE utf8_swedish_ci
;

CREATE TABLE orders (
    orderID INT NOT NULL DEFAULT 0,
    kundID INT NOT NULL,
    produktID INT NOT NULL,
    antal INT,

    PRIMARY KEY (orderID, kundID, produktID),
    FOREIGN KEY (kundID) REFERENCES kundregister(kundID),
    FOREIGN KEY (produktID) REFERENCES produkter(produktID)
)
ENGINE INNODB
CHARSET utf8
COLLATE utf8_swedish_ci
;

CREATE TABLE lager (
    hyllnummer INT NOT NULL,
    produktID INT NOT NULL,
    antal INT NOT NULL DEFAULT 0,

    PRIMARY KEY (hyllnummer, produktID),
    FOREIGN KEY (produktID) REFERENCES produkter(produktID)
)
ENGINE INNODB
CHARSET utf8
COLLATE utf8_swedish_ci
;

CREATE TABLE bilder (
    bildobjekt VARCHAR(50),
    produktID INT NOT NULL,

    PRIMARY KEY (bildobjekt, produktID),
    FOREIGN KEY (produktID) REFERENCES produkter(produktID)
)
ENGINE INNODB
CHARSET utf8
COLLATE utf8_swedish_ci
;

CREATE TABLE kategorier (
    typ VARCHAR(20),
    produktID INT NOT NULL,

    PRIMARY KEY (typ, produktID),
    FOREIGN KEY (produktID) REFERENCES produkter(produktID)
)
ENGINE INNODB
CHARSET utf8
COLLATE utf8_swedish_ci
;

CREATE TABLE logg (
    loggID INT AUTO_INCREMENT NOT NULL,
    datum DATE,
    beskrivning VARCHAR(100),

    PRIMARY KEY (loggID)
)
ENGINE INNODB
CHARSET utf8
COLLATE utf8_swedish_ci
;
