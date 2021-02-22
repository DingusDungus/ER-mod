USE dbwebb;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS produkt;
DROP TABLE IF EXISTS kund;

CREATE TABLE IF NOT EXISTS kund(
    kundid INT AUTO_INCREMENT NOT NULL,
    namn VARCHAR (20) NOT NULL,
    PRIMARY KEY (kundid)
);

CREATE TABLE IF NOT EXISTS produkt(
    produktid INT AUTO_INCREMENT NOT NULL,
    namn VARCHAR (20) NOT NULL,
    PRIMARY KEY(produktid)
);

CREATE TABLE IF NOT EXISTS orders(
    orderid INT NOT NULL,
    kundid INT,
    produktid INT,
    antal INT NOT NULL,

    FOREIGN KEY (kundid) REFERENCES kund(kundid),
    FOREIGN KEY (produktid) REFERENCES produkt(produktid),
    PRIMARY KEY (orderid, kundid, produktid)
);