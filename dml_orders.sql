USE dbwebb;

INSERT INTO orders
    (orderid, kundid, produktid, antal)
    VALUES
    (1, 2, 1, 5)
;
INSERT INTO orders
    (orderid, kundid, produktid, antal)
    VALUES
    (1, 2, 2, 1)
;  
SELECT * FROM orders;