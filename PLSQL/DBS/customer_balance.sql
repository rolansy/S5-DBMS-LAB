CREATE TABLE customer_balance (
    CID NUMBER(5) NOT NULL PRIMARY KEY,
    bal NUMBER(10)
);

INSERT INTO customer_balance (CID, bal) VALUES (6901, 10340);
INSERT INTO customer_balance (CID, bal) VALUES (6950, 7830);
INSERT INTO customer_balance (CID, bal) VALUES (7001, 45000);
INSERT INTO customer_balance (CID, bal) VALUES (8756, 69000);
INSERT INTO customer_balance (CID, bal) VALUES (4200, 500);
INSERT INTO customer_balance (CID, bal) VALUES (6902, 12003);
INSERT INTO customer_balance (CID, bal) VALUES (2030, 78030);

ALTER TABLE customer_balance ADD Category VARCHAR(20);